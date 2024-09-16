import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/auth/auth_bloc.dart';
import 'package:inker_studio/domain/blocs/quoation/artist_quotation_response/artist_quotation_response_bloc.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/domain/models/quotation/quotation_action_enum.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/schedule_assistant/schedule_assistant_page.dart';
import 'package:inker_studio/ui/quotation/widgets/animated_quotation_details.dart';
import 'package:inker_studio/ui/quotation/widgets/estimated_cost_field.dart';
import 'package:inker_studio/ui/shared/success_animation_page.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:intl/intl.dart';

class ArtistQuotationResponsePage extends StatelessWidget {
  final String quotationId;
  final ArtistQuotationAction? predefinedAction; // Nuevo parámetro opcional

  const ArtistQuotationResponsePage(
      {super.key, required this.quotationId, this.predefinedAction});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ArtistQuotationResponseBloc(
        quotationService: context.read(),
        sessionService: context.read(),
      ),
      child: _ArtistQuotationResponseView(
        quotationId: quotationId,
        predefinedAction: predefinedAction,
      ),
    );
  }
}

class _ArtistQuotationResponseView extends StatefulWidget {
  final String quotationId;
  final ArtistQuotationAction? predefinedAction; // Nuevo parámetro opcional

  const _ArtistQuotationResponseView(
      {required this.quotationId, this.predefinedAction});

  @override
  _ArtistQuotationResponseViewState createState() =>
      _ArtistQuotationResponseViewState();
}

class _ArtistQuotationResponseViewState
    extends State<_ArtistQuotationResponseView> {
  final _formKey = GlobalKey<FormState>();
  final _estimatedCostController = TextEditingController();
  final _estimatedCostFocusNode = FocusNode();
  final _additionalDetailsController = TextEditingController();

  late ArtistQuotationResponseBloc _bloc;
  late int artistId;
  ArtistQuotationAction _action = ArtistQuotationAction.quote;
  QuotationArtistRejectReason? _rejectionReason;
  final List<XFile> _proposedDesigns = [];
  QuotationStatus _quotationStatus = QuotationStatus.pending;

  bool _showDateError = false;
  bool _showDurationError = false;
  String? _dateErrorText;
  String? _durationErrorText;

  DateTime? _appointmentStartDate;
  DateTime? _appointmentEndDate;
  int _durationInMinutes = 0;

  @override
  void initState() {
    super.initState();
    _bloc = BlocProvider.of<ArtistQuotationResponseBloc>(context);
    _bloc.add(ArtistQuotationResponseEvent.loadQuotation(widget.quotationId));
    artistId =
        BlocProvider.of<AuthBloc>(context).state.session.user?.userTypeId ?? 0;

    if (widget.predefinedAction != null) {
      _action = widget.predefinedAction!;
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: Text(l10n.respondToQuotation, style: TextStyleTheme.headline2),
        backgroundColor: primaryColor,
        iconTheme: const IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: BlocConsumer<ArtistQuotationResponseBloc,
            ArtistQuotationResponseState>(
          listener: (context, state) {
            state.maybeWhen(
              submittingResponse: () {
                _showSuccessAnimationPage(
                  context,
                  AnimationState.loading,
                  l10n.processingQuotation,
                  l10n.processingQuotationMessage,
                );
              },
              success: () {
                Navigator.of(context).pop();
                _showSuccessAnimationPage(
                  context,
                  AnimationState.completed,
                  l10n.quotationResponseSuccess,
                  l10n.quotationResponseSuccessMessage,
                  onComplete: () {
                    Navigator.of(context).pop(true);
                  },
                );
              },
              failure: (error) {
                Navigator.of(context).pop();
                _showSuccessAnimationPage(
                  context,
                  AnimationState.error,
                  l10n.error,
                  error,
                );
              },
              orElse: () {},
            );
          },
          builder: (context, state) {
            return state.maybeWhen(
              initial: () {
                _bloc.add(ArtistQuotationResponseEvent.loadQuotation(
                    widget.quotationId));
                return const Center(child: InkerProgressIndicator());
              },
              quotationLoaded: (quotation) {
                _quotationStatus = quotation.status;
                return _buildPageContent(quotation, l10n);
              },
              submittingResponse: () => const SizedBox(),
              success: () => const SizedBox(),
              failure: (_) {
                _bloc.add(ArtistQuotationResponseEvent.loadQuotation(
                    widget.quotationId));
                return const Center(child: InkerProgressIndicator());
              },
              orElse: () {
                return const Center(child: InkerProgressIndicator());
              },
            );
          },
        ),
      ),
    );
  }

  void _showSuccessAnimationPage(
      BuildContext context, AnimationState state, String title, String subtitle,
      {VoidCallback? onComplete}) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => SuccessAnimationPage(
          title: title,
          subtitle: subtitle,
          state: state,
          onAnimationComplete: () {
            Navigator.of(context).pop();
            if (state == AnimationState.completed && onComplete != null) {
              onComplete();
            }
          },
        ),
      ),
    );
  }

  Widget _buildPageContent(Quotation quotation, S l10n) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimatedQuotationDetailsAccordion(quotation: quotation, l10n: l10n),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              l10n.yourResponse,
              style: TextStyleTheme.headline3.copyWith(color: Colors.white),
            ),
          ),
          _buildResponseForm(l10n),
        ],
      ),
    );
  }

  Widget _buildResponseForm(S l10n) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildActionDropdown(l10n),
            const SizedBox(height: 16),
            if (_action == ArtistQuotationAction.quote) ...[
              _buildEstimatedCostField(l10n),
              const SizedBox(height: 16),
              _buildScheduleInput(l10n),
              const SizedBox(height: 16),
              _buildAdditionalDetailsField(l10n),
              const SizedBox(height: 16),
              _buildProposedDesignsUpload(l10n),
            ] else if (_action == ArtistQuotationAction.reject) ...[
              _buildRejectionReasonDropdown(l10n),
              const SizedBox(height: 16),
              _buildAdditionalDetailsField(l10n),
            ] else if (_action == ArtistQuotationAction.acceptAppeal ||
                _action == ArtistQuotationAction.rejectAppeal) ...[
              _buildAdditionalDetailsField(l10n),
            ],
            const SizedBox(height: 24),
            Center(
              child: Container(
                margin: const EdgeInsets.only(top: 16, bottom: 36),
                width: MediaQuery.of(context).size.width * 0.9,
                height: 48,
                child: ElevatedButton(
                  onPressed: () => _submitForm(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: secondaryColor,
                    foregroundColor: quaternaryColor,
                  ),
                  child: Text(l10n.submit, style: TextStyleTheme.button),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildScheduleInput(S l10n) {
    final TextEditingController scheduleController = TextEditingController();

    if (_appointmentStartDate != null && _appointmentEndDate != null) {
      final startFormatted =
          DateFormat('yyyy-MM-dd HH:mm').format(_appointmentStartDate!);
      final endFormatted = DateFormat('HH:mm').format(_appointmentEndDate!);
      scheduleController.text = '$startFormatted - $endFormatted';
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            TextFormField(
              controller: scheduleController,
              decoration: InputDecoration(
                labelText: l10n.appointmentDateTime,
                hintText: l10n.selectDateTime,
                labelStyle:
                    TextStyleTheme.bodyText1.copyWith(color: Colors.white),
                filled: true,
                fillColor: inputBackgroundColor,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                prefixIcon: Icon(Icons.calendar_today, color: tertiaryColor),
                suffixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.info_outline, color: tertiaryColor),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(l10n.scheduleInfo)),
                        );
                      },
                    ),
                    const SizedBox(width: 48),
                  ],
                ),
                errorStyle: TextStyleTheme.caption.copyWith(color: Colors.red),
              ),
              style: TextStyleTheme.bodyText1.copyWith(color: Colors.white),
              readOnly: true,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return l10n.requiredField;
                }
                return null;
              },
            ),
            Positioned.fill(
              child: GestureDetector(
                behavior: HitTestBehavior.translucent,
                onTap: () => _navigateToScheduleAssistant(context),
                child: Container(
                  color: Colors.transparent,
                ),
              ),
            ),
            if (_appointmentStartDate != null)
              Positioned(
                right: 0,
                top: 0,
                bottom: 0,
                child: Center(
                  child: IconButton(
                    icon: Icon(Icons.close, color: tertiaryColor),
                    onPressed: () {
                      setState(() {
                        _appointmentStartDate = null;
                        _appointmentEndDate = null;
                        _durationInMinutes = 0;
                        scheduleController.clear();
                        _showDateError = false;
                        _dateErrorText = null;
                        _showDurationError = false;
                        _durationErrorText = null;
                      });
                    },
                  ),
                ),
              ),
          ],
        ),
        if (_showDateError && _dateErrorText != null)
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 12.0),
            child: Text(
              _dateErrorText!,
              style: TextStyleTheme.caption.copyWith(color: Colors.red),
            ),
          ),
        if (_showDurationError && _durationErrorText != null)
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 12.0),
            child: Text(
              _durationErrorText!,
              style: TextStyleTheme.caption.copyWith(color: Colors.red),
            ),
          ),
      ],
    );
  }

  void _navigateToScheduleAssistant(BuildContext context) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ScheduleAssistantPage(
          artistId: artistId,
          tentativeDate: _appointmentStartDate,
          tentativeDuration: _durationInMinutes,
        ),
      ),
    );

    if (result != null) {
      final startTime = result['startEventDate'] as DateTime?;
      final duration = result['duration'] as int?;

      setState(() {
        if (startTime != null && duration != null) {
          _appointmentStartDate = startTime;
          _appointmentEndDate = startTime.add(Duration(minutes: duration));
          _durationInMinutes = duration;
          _showDateError = false;
          _dateErrorText = null;

          if (duration == 0) {
            _showDurationError = true;
            _durationErrorText = S.of(context).durationCannotBeZero;
          } else {
            _showDurationError = false;
            _durationErrorText = null;
          }
        } else {
          _showDateError = true;
          _dateErrorText = S.of(context).requiredField;
          _appointmentStartDate = null;
          _appointmentEndDate = null;
          _durationInMinutes = 0;
        }
      });
    }

    _estimatedCostFocusNode.unfocus();
  }

  List<ArtistQuotationAction> _getAvailableActions() {
    switch (_quotationStatus) {
      case QuotationStatus.pending:
        return [ArtistQuotationAction.quote, ArtistQuotationAction.reject];
      case QuotationStatus.quoted:
        return [ArtistQuotationAction.reject];
      case QuotationStatus.appealed:
        return [
          ArtistQuotationAction.acceptAppeal,
          ArtistQuotationAction.rejectAppeal,
          ArtistQuotationAction.quote
        ];
      default:
        return [];
    }
  }

  Widget _buildActionDropdown(S l10n) {
    final availableActions = _getAvailableActions();
    return DropdownButtonFormField<ArtistQuotationAction>(
      value:
          availableActions.contains(_action) ? _action : availableActions.first,
      decoration: InputDecoration(
        labelText: l10n.action,
        labelStyle: TextStyleTheme.bodyText1,
        fillColor: inputBackgroundColor,
        filled: true,
        border: inputBorder,
        focusedBorder: focusedBorder,
      ),
      style: TextStyleTheme.bodyText1,
      dropdownColor: explorerSecondaryColor,
      items: availableActions.map((action) {
        return DropdownMenuItem(
          value: action,
          child: Text(_getActionText(action, l10n)),
        );
      }).toList(),
      onChanged: (value) {
        setState(() {
          _action = value!;
        });
      },
    );
  }

  String _getActionText(ArtistQuotationAction action, S l10n) {
    switch (action) {
      case ArtistQuotationAction.quote:
        return l10n.reply;
      case ArtistQuotationAction.reject:
        return l10n.reject;
      case ArtistQuotationAction.acceptAppeal:
        return l10n.acceptAppeal;
      case ArtistQuotationAction.rejectAppeal:
        return l10n.rejectAppeal;
    }
  }

  Widget _buildEstimatedCostField(S l10n) {
    return EstimatedCostField(
      controller: _estimatedCostController,
      l10n: l10n,
      focusNode: _estimatedCostFocusNode,
      onChanged: (value) {},
    );
  }

  Widget _buildAdditionalDetailsField(S l10n) {
    return TextFormField(
      controller: _additionalDetailsController,
      decoration: InputDecoration(
        labelText: l10n.additionalDetails,
        labelStyle: TextStyleTheme.bodyText1,
        fillColor: inputBackgroundColor,
        filled: true,
        border: inputBorder,
        focusedBorder: focusedBorder,
        prefixIcon: Icon(Icons.notes, color: tertiaryColor),
      ),
      style: TextStyleTheme.bodyText1,
      maxLines: 3,
    );
  }

  Widget _buildRejectionReasonDropdown(S l10n) {
    return DropdownButtonFormField<QuotationArtistRejectReason>(
      value: _rejectionReason,
      decoration: InputDecoration(
        labelText: l10n.rejectionReason,
        labelStyle: TextStyleTheme.bodyText1,
        fillColor: inputBackgroundColor,
        filled: true,
        border: inputBorder,
        focusedBorder: focusedBorder,
      ),
      style: TextStyleTheme.bodyText1,
      dropdownColor: explorerSecondaryColor,
      items: QuotationArtistRejectReason.values.map((reason) {
        return DropdownMenuItem(
          value: reason,
          child: Text(
            _getTranslatedRejectionReason(reason, l10n),
            style: TextStyleTheme.bodyText1,
          ),
        );
      }).toList(),
      onChanged: (value) {
        setState(() {
          _rejectionReason = value;
        });
      },
      validator: (value) {
        if (_action == ArtistQuotationAction.reject && value == null) {
          return l10n.requiredField;
        }
        return null;
      },
    );
  }

  String _getTranslatedRejectionReason(
      QuotationArtistRejectReason reason, S l10n) {
    switch (reason) {
      case QuotationArtistRejectReason.schedulingConflict:
        return l10n.rejectReasonSchedulingConflict;
      case QuotationArtistRejectReason.artisticDisagreement:
        return l10n.rejectReasonArtisticDisagreement;
      case QuotationArtistRejectReason.insufficientDetails:
        return l10n.rejectReasonInsufficientDetails;
      case QuotationArtistRejectReason.beyondExpertise:
        return l10n.rejectReasonBeyondExpertise;
      case QuotationArtistRejectReason.other:
        return l10n.rejectReasonOther;
    }
  }

  Widget _buildProposedDesignsUpload(S l10n) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(l10n.proposedDesigns, style: TextStyleTheme.subtitle1),
        const SizedBox(height: 8),
        Wrap(
          spacing: 8,
          runSpacing: 8,
          children: [
            ..._proposedDesigns.map((file) => _buildImagePreview(file)),
            _buildAddImageButton(l10n),
          ],
        ),
      ],
    );
  }

  Widget _buildImagePreview(XFile file) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.file(
            File(file.path),
            width: 100,
            height: 100,
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          top: 0,
          right: 0,
          child: IconButton(
            icon: Icon(Icons.close, color: quaternaryColor),
            onPressed: () {
              setState(() {
                _proposedDesigns.remove(file);
              });
            },
          ),
        ),
      ],
    );
  }

  Widget _buildAddImageButton(S l10n) {
    return InkWell(
      onTap: _pickImage,
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          border: Border.all(color: tertiaryColor),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Icon(Icons.add_photo_alternate, size: 40, color: tertiaryColor),
      ),
    );
  }

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _proposedDesigns.add(pickedFile);
      });
    }
  }

  void _submitForm(BuildContext context) {
    final validExtraFields = _validateAdditionalFields();
    if (_formKey.currentState!.validate() && validExtraFields) {
      _formKey.currentState!.save();

      _bloc.add(
        ArtistQuotationResponseEvent.submit(
          quotationId: widget.quotationId,
          action: _action,
          // TODO, ESTIMATED COST? HAY QUE ENVIAR CURRENCY O NO?
          estimatedCost: _action == ArtistQuotationAction.quote
              ? double.tryParse(_estimatedCostController.text)
              : null,
          appointmentDate: _appointmentStartDate,
          appointmentDuration: _durationInMinutes,
          additionalDetails: _additionalDetailsController.text,
          rejectionReason:
              _action == ArtistQuotationAction.reject ? _rejectionReason : null,
          proposedDesigns:
              _action == ArtistQuotationAction.quote ? _proposedDesigns : null,
        ),
      );
    }
  }

  bool _validateAdditionalFields() {
    bool isValid = true;

    if (_action == ArtistQuotationAction.quote) {
      if (_appointmentStartDate == null) {
        isValid = false;
      }

      if (_durationInMinutes == 0) {
        isValid = false;
      }
    }

    return isValid;
  }
}
