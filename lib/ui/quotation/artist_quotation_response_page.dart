import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/quoation/artist_quotation_response/artist_quotation_response_bloc.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/domain/models/quotation/quotation_action_enum.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/quotation/quotation_list_page.dart';
import 'package:inker_studio/ui/quotation/widgets/calendar_day_picker_v2.dart';
import 'package:inker_studio/ui/quotation/widgets/time_picker_with_duration_v2.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';

class ArtistQuotationResponsePage extends StatelessWidget {
  final String quotationId;

  const ArtistQuotationResponsePage({super.key, required this.quotationId});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ArtistQuotationResponseBloc(
        quotationService: context.read(),
        sessionService: context.read(),
      ),
      child: _ArtistQuotationResponseView(quotationId: quotationId),
    );
  }
}

class _ArtistQuotationResponseView extends StatefulWidget {
  final String quotationId;

  const _ArtistQuotationResponseView({required this.quotationId});

  @override
  _ArtistQuotationResponseViewState createState() =>
      _ArtistQuotationResponseViewState();
}

class _ArtistQuotationResponseViewState
    extends State<_ArtistQuotationResponseView> {
  final _formKey = GlobalKey<FormState>();
  final _estimatedCostController = TextEditingController();
  final _additionalDetailsController = TextEditingController();
  final _timeController = TextEditingController();

  late ArtistQuotationResponseBloc _bloc;

  String _selectedDuration = '1 hora';
  String _timeRange = '';
  DateTime? _appointmentDate;
  int? _appointmentDuration;
  ArtistQuotationAction _action = ArtistQuotationAction.quote;
  QuotationArtistRejectReason? _rejectionReason;
  final List<XFile> _proposedDesigns = [];
  QuotationStatus _quotationStatus = QuotationStatus.pending;

  @override
  void initState() {
    super.initState();
    _bloc = BlocProvider.of<ArtistQuotationResponseBloc>(context);
    _bloc.add(ArtistQuotationResponseEvent.loadQuotation(widget.quotationId));
  }

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        title: Text(l10n.respondToQuotation, style: TextStyleTheme.headline2),
        backgroundColor: primaryColor,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: BlocConsumer<ArtistQuotationResponseBloc,
            ArtistQuotationResponseState>(
          listener: (context, state) {
            state.maybeWhen(
              success: () {
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(l10n.quotationResponseSuccess)),
                );
              },
              failure: (error) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(error)),
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
              loading: () => const Center(child: InkerProgressIndicator()),
              orElse: () => const Center(child: InkerProgressIndicator()),
            );
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
          _buildQuotationDetails(quotation, l10n),
          const Divider(color: Colors.white24, height: 32),
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

  Widget _buildQuotationDetails(Quotation quotation, S l10n) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: explorerSecondaryColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.quotationDetails,
            style: TextStyleTheme.headline3.copyWith(color: Colors.white),
          ),
          const SizedBox(height: 16),
          _buildDetailItem(l10n.description, quotation.description),
          _buildDetailItem(l10n.status, getStatusText(quotation.status, l10n)),
          _buildDateDetailItem(l10n.createdAt, quotation.createdAt, l10n),
          if (quotation.referenceImages != null)
            _buildReferenceImages(quotation.referenceImages!, l10n),
        ],
      ),
    );
  }

  Widget _buildDetailItem(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            child: Text(
              label,
              style: TextStyleTheme.bodyText1.copyWith(color: Colors.white70),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: TextStyleTheme.bodyText1.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildReferenceImages(MultimediasMetadata images, S l10n) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.referenceImages,
          style: TextStyleTheme.bodyText1.copyWith(color: Colors.white70),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 100,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: images.metadata.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 8),
                child: Image.network(
                  images.metadata[index].url,
                  width: 100,
                  height: 100,
                  fit: BoxFit.cover,
                ),
              );
            },
          ),
        ),
      ],
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
              CalendarDayPickerV2(
                focusedDay: _appointmentDate ?? DateTime.now(),
                selectedDay: _appointmentDate,
                calendarFormat: CalendarFormat.month,
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    _appointmentDate = selectedDay;
                  });
                },
                onFormatChanged: (format) {},
              ),
              const SizedBox(height: 16),
              TimePickerWithDurationV2(
                timeController: _timeController,
                selectedDuration: _selectedDuration,
                timeRange: _timeRange,
                showError: false,
                onTimeChanged: (time) {
                  setState(() {
                    _timeController.text = time;
                    _updateTimeRange();
                  });
                },
                onDurationChanged: (duration) {
                  setState(() {
                    _selectedDuration = duration;
                    _updateTimeRange();
                  });
                },
              ),
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

  Widget _buildDateDetailItem(String label, DateTime date, S l10n) {
    final formattedDate = DateFormat.yMMMd(l10n.locale).add_Hm().format(date);
    final timeAgo = _getTimeAgo(date, l10n);

    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            child: Text(
              label,
              style: TextStyleTheme.bodyText1.copyWith(color: Colors.white70),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Icon(Icons.access_time, size: 16, color: Colors.white70),
                const SizedBox(width: 8),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        formattedDate,
                        style: TextStyleTheme.bodyText1
                            .copyWith(color: Colors.white),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        timeAgo,
                        style: TextStyleTheme.caption
                            .copyWith(color: Colors.white70),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  void _updateTimeRange() {
    if (_timeController.text.isEmpty) {
      setState(() {
        _timeRange = '';
      });
      return;
    }

    final startTime = DateFormat('HH:mm').parse(_timeController.text);
    final durationInMinutes = _getDurationInMinutes(_selectedDuration);
    final endTime = startTime.add(Duration(minutes: durationInMinutes));
    setState(() {
      _timeRange =
          '${DateFormat('HH:mm').format(startTime)} - ${DateFormat('HH:mm').format(endTime)}';
    });
  }

  int _getDurationInMinutes(String duration) {
    final Map<String, int> durationMap = {
      '30 minutos': 30,
      '1 hora': 60,
      '1 hora 30 minutos': 90,
      '2 horas': 120,
      '2 horas 30 minutos': 150,
      '3 horas': 180,
      '3 horas 30 minutos': 210,
      '4 horas': 240,
    };
    return durationMap[duration] ?? 60;
  }

  String _getTimeAgo(DateTime date, l10n) {
    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inDays > 365) {
      final years = (difference.inDays / 365).floor();
      return l10n.yearsAgo(years);
    } else if (difference.inDays > 30) {
      final months = (difference.inDays / 30).floor();
      return l10n.monthsAgo(months);
    } else if (difference.inDays > 0) {
      return l10n.daysAgo(difference.inDays);
    } else if (difference.inHours > 0) {
      return l10n.hoursAgo(difference.inHours);
    } else if (difference.inMinutes > 0) {
      return l10n.minutesAgo(difference.inMinutes);
    } else {
      return l10n.justNow;
    }
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
    return TextFormField(
      controller: _estimatedCostController,
      decoration: InputDecoration(
        labelText: l10n.estimatedCost,
        labelStyle: TextStyleTheme.bodyText1,
        fillColor: inputBackgroundColor,
        filled: true,
        border: inputBorder,
        focusedBorder: focusedBorder,
        prefixIcon: Icon(Icons.attach_money, color: tertiaryColor),
      ),
      style: TextStyleTheme.bodyText1,
      keyboardType: TextInputType.number,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      validator: (value) {
        if (value == null || value.isEmpty) {
          return l10n.requiredField;
        }
        if (double.tryParse(value) == null) {
          return l10n.invalidNumber;
        }
        return null;
      },
    );
  }

  Widget _buildAppointmentDatePicker(S l10n) {
    return ListTile(
      title: Text(l10n.appointmentDate, style: TextStyleTheme.bodyText1),
      subtitle: Text(
        _appointmentDate?.toString() ?? l10n.notSelected,
        style: TextStyleTheme.bodyText2.copyWith(color: tertiaryColor),
      ),
      trailing: Icon(Icons.calendar_today, color: secondaryColor),
      onTap: () async {
        final pickedDate = await showDatePicker(
          context: context,
          initialDate: DateTime.now(),
          firstDate: DateTime.now(),
          lastDate: DateTime.now().add(const Duration(days: 365)),
          builder: (context, child) {
            return Theme(
              data: Theme.of(context).copyWith(
                colorScheme: ColorScheme.dark(
                  primary: secondaryColor,
                  onPrimary: quaternaryColor,
                  surface: explorerSecondaryColor,
                  onSurface: quaternaryColor,
                ),
              ),
              child: child!,
            );
          },
        );
        if (pickedDate != null) {
          setState(() {
            _appointmentDate = pickedDate;
          });
        }
      },
    );
  }

  Widget _buildAppointmentDurationPicker(S l10n) {
    final List<Map<String, dynamic>> durations = [
      {'value': 15, 'label': '15 min'},
      {'value': 30, 'label': '30 min'},
      {'value': 45, 'label': '45 min'},
      {'value': 60, 'label': '1 hr'},
      {'value': 75, 'label': '1 hr 15 min'},
      {'value': 90, 'label': '1 hr 30 min'},
      {'value': 105, 'label': '1 hr 45 min'},
      {'value': 120, 'label': '2 hr'},
      {'value': 150, 'label': '2 hr 30 min'},
      {'value': 180, 'label': '3 hr'},
    ];

    return DropdownButtonFormField<int>(
      decoration: InputDecoration(
        labelText: l10n.appointmentDuration,
        labelStyle: TextStyleTheme.bodyText1.copyWith(color: tertiaryColor),
        fillColor: inputBackgroundColor,
        filled: true,
        border: inputBorder,
        focusedBorder: focusedBorder,
        prefixIcon: Icon(Icons.access_time, color: tertiaryColor),
      ),
      value: _appointmentDuration,
      items: durations.map((duration) {
        return DropdownMenuItem<int>(
          value: duration['value'],
          child: Text(
            duration['label'],
            style: TextStyleTheme.bodyText1.copyWith(color: quaternaryColor),
          ),
        );
      }).toList(),
      onChanged: (value) {
        setState(() {
          _appointmentDuration = value!;
        });
      },
      dropdownColor: explorerSecondaryColor,
      style: TextStyleTheme.bodyText1.copyWith(color: quaternaryColor),
      icon: Icon(Icons.arrow_drop_down, color: tertiaryColor),
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
            reason.toString().split('.').last,
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
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      _bloc.add(
        ArtistQuotationResponseEvent.submit(
          quotationId: widget.quotationId,
          action: _action,
          estimatedCost: _action == ArtistQuotationAction.quote
              ? double.tryParse(_estimatedCostController.text)
              : null,
          appointmentDate:
              _action == ArtistQuotationAction.quote ? _appointmentDate : null,
          appointmentDuration: _action == ArtistQuotationAction.quote
              ? _appointmentDuration
              : null,
          additionalDetails: _additionalDetailsController.text,
          rejectionReason:
              _action == ArtistQuotationAction.reject ? _rejectionReason : null,
          proposedDesigns:
              _action == ArtistQuotationAction.quote ? _proposedDesigns : null,
        ),
      );
    }
  }
}
