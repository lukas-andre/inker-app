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
import 'package:inker_studio/ui/artist/artist_home_page.dart';

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
                    // Navigate directly to ArtistAppPage on "Mis Propuestas" tab
                    Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(
                        builder: (context) => const ArtistAppPage(
                          initialTab: 2, // Tab de Trabajos
                          workTabIndex: 1, // Sub-tab "Mis Propuestas"
                        ),
                      ),
                      (route) => false,
                    );
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
        // Web-optimized gallery layout
        if (_proposedDesigns.isEmpty && kIsWeb) 
          _buildDragDropZone(l10n)
        else
          _buildImageGallery(l10n),
      ],
    );
  }

  Widget _buildImageGallery(S l10n) {
    const thumbnailSize = kIsWeb ? 200.0 : 120.0;
    
    return SizedBox(
      height: thumbnailSize + 20, // Extra space for padding
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: _proposedDesigns.length + 1,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          if (index == _proposedDesigns.length) {
            return _buildAddImageButton(l10n, size: thumbnailSize);
          }
          return _buildImageThumbnail(index, size: thumbnailSize);
        },
      ),
    );
  }

  Widget _buildDragDropZone(S l10n) {
    return InkWell(
      onTap: _pickImage,
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white30,
            width: 2,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(12),
          color: Colors.black26,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.cloud_upload_outlined, size: 48, color: Colors.white60),
              const SizedBox(height: 12),
              Text(
                'Click to upload images',
                style: TextStyleTheme.bodyText2.copyWith(color: Colors.white60),
              ),
              const SizedBox(height: 4),
              Text(
                'Drag and drop coming soon',
                style: TextStyleTheme.caption.copyWith(color: Colors.white38),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildImageThumbnail(int index, {required double size}) {
    final file = _proposedDesigns[index];
    
    return SizedBox(
      width: size,
      height: size,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Image container with better aspect ratio handling
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.white24, width: 1),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withValues(alpha: 0.3),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: AspectRatio(
                aspectRatio: 1.0,
                child: kIsWeb
                  ? Image.network(
                      file.path,
                      fit: BoxFit.contain,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          color: Colors.grey[800],
                          child: const Icon(Icons.broken_image, color: Colors.white),
                        );
                      },
                      frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
                        if (wasSynchronouslyLoaded) return child;
                        return AnimatedSwitcher(
                          duration: const Duration(milliseconds: 300),
                          child: frame != null
                              ? child
                              : Container(
                                  color: Colors.grey[800],
                                  child: Stack(
                                    children: [
                                      // Shimmer effect
                                      Positioned.fill(
                                        child: AnimatedContainer(
                                          duration: const Duration(seconds: 1),
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              begin: Alignment.topLeft,
                                              end: Alignment.bottomRight,
                                              colors: [
                                                Colors.grey[800]!,
                                                Colors.grey[700]!,
                                                Colors.grey[800]!,
                                              ],
                                              stops: const [0.0, 0.5, 1.0],
                                            ),
                                          ),
                                        ),
                                      ),
                                      const Center(
                                        child: Icon(
                                          Icons.image_outlined,
                                          color: Colors.white38,
                                          size: 32,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                        );
                      },
                    )
                  : Image.file(
                      File(file.path),
                      fit: BoxFit.contain,
                    ),
              ),
            ),
          ),
          // Better positioned remove button
          Positioned(
            top: -8,
            right: -8,
            child: Material(
              color: Colors.red,
              borderRadius: BorderRadius.circular(12),
              elevation: 4,
              child: InkWell(
                onTap: () {
                  setState(() {
                    _proposedDesigns.removeAt(index);
                  });
                },
                borderRadius: BorderRadius.circular(12),
                child: const SizedBox(
                  width: 24,
                  height: 24,
                  child: Icon(
                    Icons.close,
                    color: Colors.white,
                    size: 16,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAddImageButton(S l10n, {required double size}) {
    return InkWell(
      onTap: _pickImage,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: Colors.black38,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.white24, width: 2, style: BorderStyle.solid),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.add_photo_alternate_outlined,
              size: 30,
              color: Colors.white60,
            ),
            const SizedBox(height: 8),
            Text(
              l10n.addDesign,
              style: TextStyleTheme.caption.copyWith(color: Colors.white60),
              textAlign: TextAlign.center,
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
