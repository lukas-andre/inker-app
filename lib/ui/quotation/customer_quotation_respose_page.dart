import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/quoation/customer_quotation_response/customer_quotation_response_bloc.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/domain/models/quotation/quotation_action_enum.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/keys.dart';
import 'package:inker_studio/ui/quotation/quotation_detail_page.dart';
import 'package:inker_studio/ui/quotation/widgets/animated_quotation_details.dart';
import 'package:inker_studio/ui/shared/success_animation_page.dart';
import 'package:inker_studio/ui/theme/app_styles.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';

class CustomerQuotationResponsePage extends StatelessWidget {
  final String quotationId;
  final CustomerQuotationAction? predefinedAction;

  const CustomerQuotationResponsePage(
      {super.key, required this.quotationId, this.predefinedAction});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CustomerQuotationResponseBloc(
        quotationService: context.read(),
        sessionService: context.read(),
      ),
      child: _CustomerQuotationResponseView(
        quotationId: quotationId,
        action: predefinedAction!,
      ),
    );
  }
}

class _CustomerQuotationResponseView extends StatefulWidget {
  final String quotationId;
  final CustomerQuotationAction action;

  const _CustomerQuotationResponseView({
    required this.quotationId,
    required this.action,
  });

  @override
  _CustomerQuotationResponseViewState createState() =>
      _CustomerQuotationResponseViewState();
}

class _CustomerQuotationResponseViewState
    extends State<_CustomerQuotationResponseView> {
  final _formKey = GlobalKey<FormState>();
  final _additionalDetailsController = TextEditingController();

  QuotationCustomerRejectReason? _rejectionReason;
  QuotationCustomerAppealReason? _appealReason;

  late CustomerQuotationResponseBloc _bloc;

  @override
  void initState() {
    super.initState();
    _bloc = BlocProvider.of<CustomerQuotationResponseBloc>(context);
    _bloc.add(CustomerQuotationResponseEvent.loadQuotation(widget.quotationId));
  }

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      appBar: AppBar(
        title: Text(_getActionTitle(widget.action, l10n),
            style: TextStyleTheme.headline2),
        backgroundColor: Theme.of(context).colorScheme.surface,
        iconTheme: const IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: BlocConsumer<CustomerQuotationResponseBloc,
            CustomerQuotationResponseState>(
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
                _bloc.add(CustomerQuotationResponseEvent.loadQuotation(
                    widget.quotationId));
                return const Center(child: InkerProgressIndicator());
              },
              quotationLoaded: (quotation) {
                return _buildPageContent(quotation, l10n);
              },
              submittingResponse: () => const SizedBox(),
              success: () => const SizedBox(),
              failure: (_) {
                _bloc.add(CustomerQuotationResponseEvent.loadQuotation(
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
    BuildContext context,
    AnimationState state,
    String title,
    String subtitle, {
    VoidCallback? onComplete,
  }) {
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
              _getActionTitle(widget.action, l10n),
              style: TextStyleTheme.headline3.copyWith(color: Colors.white),
            ),
          ),
          _buildResponseForm(l10n),
        ],
      ),
    );
  }

  String _getActionTitle(CustomerQuotationAction action, S l10n) {
    switch (action) {
      case CustomerQuotationAction.accept:
        return l10n.acceptQuotation;
      case CustomerQuotationAction.appeal:
        return l10n.appealQuotation;
      case CustomerQuotationAction.reject:
        return l10n.rejectQuotation;
      case CustomerQuotationAction.cancel:
        return l10n.cancelQuotation;
    }
  }

  Widget _buildResponseForm(S l10n) {
    return Form(
      key: _formKey,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.action == CustomerQuotationAction.appeal)
              _buildAppealReasonDropdown(l10n),
            if (widget.action == CustomerQuotationAction.reject)
              _buildRejectionReasonDropdown(context, l10n),
            if (widget.action != CustomerQuotationAction.accept)
              const SizedBox(height: 16),
            _buildAdditionalDetailsField(context, l10n),
            const SizedBox(height: 24),
            Center(
              child: Container(
                key: K.quotationActionSubmitButton,
                margin: const EdgeInsets.only(top: 16, bottom: 36),
                width: MediaQuery.of(context).size.width * 0.9,
                height: 48,
                child: ElevatedButton(
                  onPressed: () => _submitForm(context),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context).colorScheme.secondary,
                    foregroundColor: Theme.of(context).scaffoldBackgroundColor,
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

  Widget _buildAppealReasonDropdown(S l10n) {
    return DropdownButtonFormField<QuotationCustomerAppealReason>(
      key: K.quotationAppealReasonField,
      value: _appealReason,
      decoration: InputDecoration(
        labelText: l10n.appealReason,
        labelStyle: TextStyleTheme.bodyText1,
        fillColor: inputBackgroundColor,
        filled: true,
        border: inputBorder,
        focusedBorder: focusedBorder,
      ),
      style: TextStyleTheme.bodyText1,
      dropdownColor: inputBackgroundColor,
      items: QuotationCustomerAppealReason.values.map((reason) {
        return DropdownMenuItem(
          key: Key(reason.index.toString()),
          value: reason,
          child: Text(
            _getTranslatedAppealReason(reason, l10n),
            style: TextStyleTheme.bodyText1,
          ),
        );
      }).toList(),
      onChanged: (value) {
        setState(() {
          _appealReason = value;
        });
      },
      validator: (value) {
        if (widget.action == CustomerQuotationAction.appeal && value == null) {
          return l10n.requiredField;
        }
        return null;
      },
    );
  }

  String _getTranslatedAppealReason(
      QuotationCustomerAppealReason reason, S l10n) {
    switch (reason) {
      case QuotationCustomerAppealReason.dateChange:
        return l10n.appealReasonDateChange;
      case QuotationCustomerAppealReason.priceChange:
        return l10n.appealReasonPriceChange;
      case QuotationCustomerAppealReason.designChange:
        return l10n.appealReasonDesignChange;
      case QuotationCustomerAppealReason.other:
        return l10n.appealReasonOther;
    }
  }

  Widget _buildRejectionReasonDropdown(BuildContext context, S l10n) {
    return DropdownButtonFormField<QuotationCustomerRejectReason>(
      key: K.quotationRejectReasonField,
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
      dropdownColor: inputBackgroundColor,
      items: QuotationCustomerRejectReason.values.map((reason) {
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
        if (widget.action == CustomerQuotationAction.reject && value == null) {
          return l10n.requiredField;
        }
        return null;
      },
    );
  }

  String _getTranslatedRejectionReason(
      QuotationCustomerRejectReason reason, S l10n) {
    switch (reason) {
      case QuotationCustomerRejectReason.tooExpensive:
        return l10n.rejectReasonTooExpensive;
      case QuotationCustomerRejectReason.notWhatIWanted:
        return l10n.rejectReasonNotWhatIWanted;
      case QuotationCustomerRejectReason.changedMyMind:
        return l10n.rejectReasonChangedMyMind;
      case QuotationCustomerRejectReason.foundAnotherArtist:
        return l10n.rejectReasonFoundAnotherArtist;
      case QuotationCustomerRejectReason.other:
        return l10n.rejectReasonOther;
    }
  }

  Widget _buildAdditionalDetailsField(BuildContext context, S l10n) {
    return TextFormField(
      key: K.quotationAdditionalDetailsField,
      controller: _additionalDetailsController,
      decoration: InputDecoration(
        labelText: l10n.additionalDetails,
        labelStyle: TextStyleTheme.bodyText1,
        fillColor: inputBackgroundColor,
        filled: true,
        border: inputBorder,
        focusedBorder: focusedBorder,
        prefixIcon:
            Icon(Icons.notes, color: Theme.of(context).colorScheme.primary),
      ),
      style: TextStyleTheme.bodyText1,
      maxLines: 3,
      validator: (value) {
        if ((widget.action == CustomerQuotationAction.appeal ||
                widget.action == CustomerQuotationAction.reject) &&
            (value == null || value.isEmpty)) {
          return l10n.requiredField;
        }
        return null;
      },
    );
  }

  void _submitForm(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      _bloc.add(
        CustomerQuotationResponseEvent.submit(
          quotationId: widget.quotationId,
          action: widget.action,
          additionalDetails: _additionalDetailsController.text,
          rejectionReason: _rejectionReason,
          appealReason: _appealReason,
        ),
      );
    }
  }
}
