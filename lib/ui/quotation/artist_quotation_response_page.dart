import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/features/auth_shared/bloc/auth/auth_bloc.dart' show AuthBloc;
import 'package:inker_studio/domain/blocs/quoation/artist_quotation_response/artist_quotation_response_bloc.dart';
import 'package:inker_studio/domain/blocs/quoation/quotation_list/quotation_list_bloc.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/domain/models/quotation/quotation_action_enum.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/keys.dart';
import 'package:inker_studio/ui/quotation/quotation_detail_page.dart';
import 'package:inker_studio/ui/schedule_assistant/schedule_assistant_page.dart';
import 'package:inker_studio/ui/quotation/widgets/animated_quotation_details.dart';
import 'package:inker_studio/ui/quotation/widgets/estimated_cost_field.dart';
import 'package:inker_studio/ui/shared/success_animation_page.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:image_picker/image_picker.dart';
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
  late String artistId;
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
        BlocProvider.of<AuthBloc>(context).state.session.user?.userTypeId ?? '';

    if (widget.predefinedAction != null) {
      _action = widget.predefinedAction!;
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text(l10n.respondToQuotation, style: TextStyleTheme.headline2),
        backgroundColor: Theme.of(context).colorScheme.surface,
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
                    // Refresh the quotation in the bloc first, then return with success
                    context.read<QuotationListBloc>().add(
                          QuotationListEvent.getQuotationById(
                              widget.quotationId),
                        );

                    // Add a slight delay to allow the update to propagate
                    Future.delayed(const Duration(milliseconds: 300), () {
                      if (context.mounted) {
                        // Pop back to the quotation details page with result=true to trigger refresh
                        Navigator.of(context).pop(true);
                      }
                    });
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
          AnimatedQuotationDetailsAccordion(
            quotation: quotation,
            l10n: l10n,
            onViewDetails: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => QuotationDetailsPage(
                    quotation: quotation,
                  ),
                ),
              );
            },
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              l10n.yourResponse,
              style: TextStyleTheme.headline3.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.bold
              ),
            ),
          ),
          _buildResponseForm(l10n),
        ],
      ),
    );
  }

  Widget _buildResponseForm(S l10n) {
    final availableActions = _getAvailableActions();
    if (availableActions.isEmpty) {
      return const SizedBox.shrink();
    }
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:16.0),
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
                key: K.quotationActionSubmitButton,
                margin: const EdgeInsets.only(top: 16, bottom: 36),
                width: MediaQuery.of(context).size.width * 0.9,
                height: 56,
                child: ElevatedButton(
                  onPressed: () => _submitForm(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    )
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
              decoration: _inputDecoration(
                l10n.appointmentDateTime,
                l10n.selectDateTime,
                prefixIcon: Icons.calendar_today,
                suffixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: const Icon(Icons.info_outline, color: Colors.white70),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(l10n.scheduleInfo)),
                        );
                      },
                    ),
                    const SizedBox(width: 48), // Space for clear button
                  ],
                ),
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
                key: K.dateTimeRangeSelector,
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
                    icon: const Icon(Icons.close, color: Colors.white70),
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
          // ArtistQuotationAction.acceptAppeal,
          ArtistQuotationAction.rejectAppeal,
          ArtistQuotationAction.quote
        ];
      case QuotationStatus.open:
        return [ArtistQuotationAction.quote];
      default:
        return [];
    }
  }

  Widget _buildActionDropdown(S l10n) {
    final availableActions = _getAvailableActions();
    return DropdownButtonFormField<ArtistQuotationAction>(
      value:
          availableActions.contains(_action) ? _action : availableActions.first,
      decoration: _inputDecoration(l10n.action, ''),
      style: TextStyleTheme.bodyText1.copyWith(color: Colors.white),
      dropdownColor: Theme.of(context).colorScheme.surfaceVariant,
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
      key: K.quotationAdditionalDetailsField,
      controller: _additionalDetailsController,
      decoration: _inputDecoration(
        l10n.additionalDetails,
        '',
        prefixIcon: Icons.notes,
      ),
      style: TextStyleTheme.bodyText1.copyWith(color: Colors.white),
      maxLines: 3,
    );
  }

  Widget _buildRejectionReasonDropdown(S l10n) {
    return DropdownButtonFormField<QuotationArtistRejectReason>(
      key: K.quotationRejectReasonField,
      value: _rejectionReason,
      decoration: _inputDecoration(l10n.rejectionReason, ''),
      style: TextStyleTheme.bodyText1.copyWith(color: Colors.white),
      dropdownColor: Theme.of(context).colorScheme.surfaceVariant,
      items: QuotationArtistRejectReason.values.map((
        reason,
      ) {
        return DropdownMenuItem(
          key: Key(reason.index.toString()),
          value: reason,
          child: Text(
            _getTranslatedRejectionReason(reason, l10n),
            style: TextStyleTheme.bodyText1.copyWith(color: Colors.white),
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
        Text(l10n.proposedDesigns, style: TextStyleTheme.subtitle1.copyWith(color: Colors.white)),
        const SizedBox(height: 12),
        Wrap(
          spacing: 12,
          runSpacing: 12,
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
            icon: const Icon(Icons.close, color: Colors.white70),
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
      borderRadius: BorderRadius.circular(8),
      onTap: _pickImage,
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surfaceVariant.withOpacity(0.3),
          border: Border.all(color: Colors.white.withOpacity(0.2)),
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Icon(Icons.add_photo_alternate,
            size: 40, color: Colors.white70),
      ),
    );
  }

  InputDecoration _inputDecoration(
    String labelText,
    String hintText, {
    IconData? prefixIcon,
    Widget? suffixIcon,
  }) {
    return InputDecoration(
      labelText: labelText,
      hintText: hintText,
      labelStyle: TextStyleTheme.bodyText1.copyWith(color: Colors.white70),
      hintStyle: TextStyleTheme.bodyText1.copyWith(color: Colors.white60),
      fillColor: Theme.of(context).colorScheme.surfaceVariant.withOpacity(0.3),
      filled: true,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(
            color: Theme.of(context).colorScheme.secondary, width: 2),
      ),
      prefixIcon: prefixIcon != null
          ? Icon(prefixIcon, color: Colors.white70)
          : null,
      suffixIcon: suffixIcon,
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
      Money? money;
      final cost = double.tryParse(_estimatedCostController.text.replaceAll(',', '').replaceAll('.', ''));
      if (cost != null) {
        money = Money(
          amount: cost.toInt(),
          currency: 'CLP',
          scale: 0,
        );
      }
      _bloc.add(
        ArtistQuotationResponseEvent.submit(
          quotationId: widget.quotationId,
          action: _action,
          // TODO, ESTIMATED COST? HAY QUE ENVIAR CURRENCY O NO?
          
          estimatedCost: _action == ArtistQuotationAction.quote
              ? money
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
