import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/features/auth_shared/bloc/auth/auth_bloc.dart' show AuthBloc;
import 'package:inker_studio/domain/blocs/quoation/artist_quotation_response/artist_quotation_response_bloc.dart'; // Re-use for loading
import 'package:inker_studio/domain/blocs/quoation/quotation_list/quotation_list_bloc.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
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

// Renamed Page and State
class ArtistOpenQuotationOfferPage extends StatelessWidget {
  final String quotationId;

  const ArtistOpenQuotationOfferPage({super.key, required this.quotationId});

  @override
  Widget build(BuildContext context) {
    // Use ArtistQuotationResponseBloc temporarily for loading quotation details
    // Consider creating a dedicated OfferBloc later if complexity increases
    return BlocProvider(
      create: (context) => ArtistQuotationResponseBloc(
        quotationService: context.read(),
        sessionService: context.read(),
      ),
      child: _ArtistOpenQuotationOfferPageView(quotationId: quotationId),
    );
  }
}

class _ArtistOpenQuotationOfferPageView extends StatefulWidget {
  final String quotationId;

  const _ArtistOpenQuotationOfferPageView({required this.quotationId});

  @override
  _ArtistOpenQuotationOfferPageViewState createState() =>
      _ArtistOpenQuotationOfferPageViewState();
}

class _ArtistOpenQuotationOfferPageViewState
    extends State<_ArtistOpenQuotationOfferPageView> {
  final _formKey = GlobalKey<FormState>();
  final _estimatedCostController = TextEditingController();
  final _estimatedCostFocusNode = FocusNode();
  final _additionalDetailsController = TextEditingController();

  late ArtistQuotationResponseBloc _bloc; // Re-used bloc
  late String artistId;
  final List<XFile> _proposedDesigns = [];

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
  }

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        // Changed title
        title: Text(l10n.submitOffer, style: TextStyleTheme.headline2),
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
              // Keep loading/error/success feedback, adjust titles/messages
              submittingResponse: () {
                _showSuccessAnimationPage(
                  context,
                  AnimationState.loading,
                  l10n.submittingOffer,
                  l10n.submittingOfferMessage,
                );
              },
              success: () {
                Navigator.of(context).pop(); // Close loading dialog
                _showSuccessAnimationPage(
                  context,
                  AnimationState.completed,
                  l10n.offerSubmittedTitle,
                  l10n.offerSubmittedMessage,
                  onComplete: () {
                    // Refresh the quotation list (specifically open tab if possible)
                    // This might need refinement depending on how list state is managed
                    context.read<QuotationListBloc>().add(
                          const QuotationListEvent
                              .refreshCurrentTab(), // Assuming this exists or add similar
                        );

                    // Pop back to the previous screen (likely quotation list or details)
                    Future.delayed(const Duration(milliseconds: 300), () {
                      if (context.mounted) {
                        // Pop back twice: once for the success page, once for the offer page itself
                        Navigator.of(context).pop(); // Pop success page
                        Navigator.of(context)
                            .pop(true); // Pop offer page with result=true
                      }
                    });
                  },
                );
              },
              failure: (error) {
                Navigator.of(context).pop(); // Close loading dialog
                _showSuccessAnimationPage(
                  context,
                  AnimationState.error,
                  l10n.error,
                  error, // Show the specific error message
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
                // Ensure it's an OPEN quotation - add check if needed
                return _buildPageContent(quotation, l10n);
              },
              // Display loading/error states during submission
              submittingResponse: () =>
                  const Center(child: InkerProgressIndicator()),
              success: () =>
                  const SizedBox(), // Success state handled by listener
              failure: (error) => Center(
                  child: Text(error,
                      style: const TextStyle(
                          color: Colors.red))), // Show error inline
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
    // Prevent pushing multiple success pages if listener fires quickly
    if (ModalRoute.of(context)?.isCurrent ?? false) {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => SuccessAnimationPage(
            title: title,
            subtitle: subtitle,
            state: state,
            onAnimationComplete: () {
              // Pop the success animation page itself
              if (Navigator.canPop(context)) {
                Navigator.of(context).pop();
              }
              // Execute the completion callback (e.g., further navigation)
              if (onComplete != null) {
                onComplete();
              }
            },
          ),
        ),
      );
    }
  }

  Widget _buildPageContent(Quotation quotation, S l10n) {
    // Similar structure, but form is only for submitting an offer
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AnimatedQuotationDetailsAccordion(
            quotation: quotation,
            l10n: l10n,
            onViewDetails: () {
              // Navigate to full details if needed
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
              l10n.yourOffer,
              style: TextStyleTheme.headline3.copyWith(color: Colors.white),
            ),
          ),
          _buildOfferForm(l10n), // Renamed form builder
        ],
      ),
    );
  }

  Widget _buildOfferForm(S l10n) {
    // Form only contains fields relevant to submitting an offer
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Removed Action Dropdown - Implicitly submitting an offer
            _buildEstimatedCostField(l10n),
            const SizedBox(height: 16),
            _buildScheduleInput(l10n),
            const SizedBox(height: 16),
            _buildAdditionalDetailsField(l10n),
            const SizedBox(height: 16),
            _buildProposedDesignsUpload(l10n),
            // Removed Rejection Reason Dropdown
            const SizedBox(height: 24),
            Center(
              child: Container(
                // Use a different key if needed for testing
                key: K
                    .quotationActionSubmitButton, // Consider renaming key K.submitOfferButton
                margin: const EdgeInsets.only(top: 16, bottom: 36),
                width: MediaQuery.of(context).size.width * 0.9,
                height: 48,
                child: ElevatedButton(
                  onPressed: () => _submitOffer(context), // Changed method call
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    foregroundColor: Theme.of(context).scaffoldBackgroundColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 0,
                  ),
                  // Changed button text
                  child: Text(l10n.submitOffer, 
                    style: TextStyleTheme.button.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // --- Re-used Widgets (Estimated Cost, Schedule, Details, Designs) ---
  // Keep these methods as they are needed for the offer

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
        Text(
          l10n.proposedAppointment,
          style: TextStyleTheme.bodyText1,
        ),
        const SizedBox(height: 8),
        Stack(
          children: [
            TextFormField(
              controller: scheduleController,
              decoration: InputDecoration(
                hintText: l10n.selectDateTime,
                hintStyle: TextStyleTheme.bodyText2.copyWith(color: Colors.white60),
                filled: true,
                fillColor: Colors.black38,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
                contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                prefixIcon: Icon(Icons.calendar_today,
                    color: Colors.white),
                suffixIcon: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(Icons.info_outline,
                          color: Colors.white),
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(l10n.scheduleInfo)),
                        );
                      },
                    ),
                    const SizedBox(width: 48), // Space for clear button
                  ],
                ),
                errorStyle: TextStyleTheme.caption.copyWith(color: Colors.red),
              ),
              style: TextStyleTheme.bodyText1,
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
                key: K.dateTimeRangeSelector, // Keep key
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
                    icon: Icon(Icons.close, color: Colors.white),
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
    final l10n = S.of(context);
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
            _durationErrorText = l10n.durationCannotBeZero;
          } else {
            _showDurationError = false;
            _durationErrorText = null;
          }
        } else {
          // Handle case where schedule assistant returns null/invalid data
          _showDateError = true;
          _dateErrorText = l10n.requiredField; // Or a more specific error
          _appointmentStartDate = null;
          _appointmentEndDate = null;
          _durationInMinutes = 0;
        }
      });
    }

    _estimatedCostFocusNode.unfocus(); // Keep focus logic
  }

  Widget _buildEstimatedCostField(S l10n) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.estimatedCost,
          style: TextStyleTheme.bodyText1,
        ),
        const SizedBox(height: 8),
        EstimatedCostField(
          controller: _estimatedCostController,
          l10n: l10n,
          focusNode: _estimatedCostFocusNode,
          onChanged: (value) {},
        ),
      ],
    );
  }

  Widget _buildAdditionalDetailsField(S l10n) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.additionalDetailsOptional,
          style: TextStyleTheme.bodyText1,
        ),
        const SizedBox(height: 8),
        TextFormField(
          key: K.quotationAdditionalDetailsField,
          controller: _additionalDetailsController,
          decoration: InputDecoration(
            hintText: l10n.additionalDetailsOptional,
            hintStyle: TextStyleTheme.bodyText2.copyWith(color: Colors.white60),
            fillColor: Colors.black38,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: BorderSide.none,
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
            prefixIcon: Icon(Icons.notes, color: Colors.white),
          ),
          style: TextStyleTheme.bodyText1,
          maxLines: 3,
        ),
      ],
    );
  }

  Widget _buildProposedDesignsUpload(S l10n) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.proposedDesignsOptional, 
          style: TextStyleTheme.bodyText1,
        ),
        const SizedBox(height: 8),
        Text(
          l10n.addReferenceImagesOrSketches,
          style: TextStyleTheme.caption.copyWith(color: Colors.white70),
        ),
        const SizedBox(height: 12),
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
          child: kIsWeb
            ? Image.network(
                file.path,
                width: 100,
                height: 100,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    width: 100,
                    height: 100,
                    color: Colors.grey[800],
                    child: const Icon(Icons.broken_image, color: Colors.white),
                  );
                },
              )
            : Image.file(
                File(file.path),
                width: 100,
                height: 100,
                fit: BoxFit.cover,
              ),
        ),
        Positioned(
          top: -10, // Adjust position for better visibility
          right: -10,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(0.5),
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const Icon(Icons.close, color: Colors.white, size: 18),
              onPressed: () {
                setState(() {
                  _proposedDesigns.remove(file);
                });
              },
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
            ),
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
          color: Colors.black38,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.add_photo_alternate_outlined,
                size: 30, color: Colors.white),
            const SizedBox(height: 4),
            Text(
              l10n.addDesign,
              style: TextStyleTheme.caption,
            )
          ],
        ),
      ),
    );
  }

  Future<void> _pickImage() async {
    // Limit number of images?
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _proposedDesigns.add(pickedFile);
      });
    }
  }

  // --- Submission Logic ---

  void _submitOffer(BuildContext context) {
    // Validate required fields for the offer
    if (_formKey.currentState!.validate() && _validateOfferFields()) {
      _formKey.currentState!.save();

      // Use the re-used bloc but call the new submitOffer event
      _bloc.add(
        ArtistQuotationResponseEvent.submitOffer(
          quotationId: widget.quotationId,
          estimatedCost: _estimatedCostController.text.isNotEmpty
              ? double.tryParse(
                  _estimatedCostController.text.replaceAll('.', ''))
              : null,
          appointmentDate: _appointmentStartDate,
          appointmentDuration: _durationInMinutes,
          additionalDetails: _additionalDetailsController.text.trim(),
          proposedDesigns: _proposedDesigns,
        ),
      );
    }
  }

  bool _validateOfferFields() {
    final l10n = S.of(context);
    // Add specific validation for offer fields if different from standard response
    bool isValid = true;
    // Reset custom errors
    setState(() {
      _showDateError = false;
      _dateErrorText = null;
      _showDurationError = false;
      _durationErrorText = null;
    });

    if (_appointmentStartDate == null) {
      setState(() {
        _showDateError = true;
        _dateErrorText = l10n.requiredField;
      });
      isValid = false;
    }

    // Validate duration (assuming it should be > 0 if date is set)
    if (_appointmentStartDate != null && _durationInMinutes <= 0) {
      setState(() {
        _showDurationError = true;
        _durationErrorText = l10n.durationMustBePositive;
      });
      isValid = false;
    }

    // Add any other specific offer validations here

    return isValid;
  }
}

// TODO: Add the `submitOffer` event to `ArtistQuotationResponseEvent`
// TODO: Handle the `submitOffer` event in `ArtistQuotationResponseBloc` to call the `quotationService.submitOffer` method.
// Consider creating a dedicated `ArtistOpenQuotationOfferBloc` if logic diverges significantly.
