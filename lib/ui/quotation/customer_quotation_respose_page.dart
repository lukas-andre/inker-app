import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/quoation/customer_quotation_response/customer_quotation_response_bloc.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/domain/models/quotation/quotation_action_enum.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/quotation/widgets/animated_quotation_details.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/layout/inker_progress_indicator.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

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
        predefinedAction: predefinedAction,
      ),
    );
  }
}

class _CustomerQuotationResponseView extends StatefulWidget {
  final String quotationId;
  final CustomerQuotationAction? predefinedAction;

  const _CustomerQuotationResponseView(
      {required this.quotationId, this.predefinedAction});

  @override
  _CustomerQuotationResponseViewState createState() =>
      _CustomerQuotationResponseViewState();
}

class _CustomerQuotationResponseViewState
    extends State<_CustomerQuotationResponseView> {
  final _formKey = GlobalKey<FormState>();
  final _additionalDetailsController = TextEditingController();

  late CustomerQuotationResponseBloc _bloc;
  CustomerQuotationAction _action = CustomerQuotationAction.accept;
  QuotationStatus _quotationStatus = QuotationStatus.pending;

  @override
  void initState() {
    super.initState();
    _bloc = BlocProvider.of<CustomerQuotationResponseBloc>(context);
    _bloc.add(CustomerQuotationResponseEvent.loadQuotation(widget.quotationId));

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
        child: BlocConsumer<CustomerQuotationResponseBloc,
            CustomerQuotationResponseState>(
          listener: (context, state) {
            state.maybeWhen(
              submittingResponse: () {
                // Mostrar indicador de carga
              },
              success: () {
                // Mostrar mensaje de éxito y volver
                Navigator.of(context).pop(true);
              },
              failure: (error) {
                // Mostrar mensaje de error
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
                _quotationStatus = quotation.status;
                return _buildPageContent(quotation, l10n);
              },
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
            if (_action == CustomerQuotationAction.appeal ||
                _action == CustomerQuotationAction.reject)
              _buildAdditionalDetailsField(l10n),
            const SizedBox(height: 24),
            Center(
              child: ElevatedButton(
                onPressed: () => _submitForm(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: secondaryColor,
                  foregroundColor: quaternaryColor,
                ),
                child: Text(l10n.submit, style: TextStyleTheme.button),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionDropdown(S l10n) {
    final availableActions = _getAvailableActions();
    return DropdownButtonFormField<CustomerQuotationAction>(
      value: _action,
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

  List<CustomerQuotationAction> _getAvailableActions() {
    switch (_quotationStatus) {
      case QuotationStatus.quoted:
        return [
          CustomerQuotationAction.accept,
          CustomerQuotationAction.appeal,
          CustomerQuotationAction.reject,
        ];
      default:
        return [];
    }
  }

  String _getActionText(CustomerQuotationAction action, S l10n) {
    switch (action) {
      case CustomerQuotationAction.accept:
        return l10n.accept;
      case CustomerQuotationAction.appeal:
        return l10n.appeal;
      case CustomerQuotationAction.reject:
        return l10n.reject;
      case CustomerQuotationAction.cancel:
        // TODO: Handle this case.
        break;
    }

    return '';
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
      validator: (value) {
        if ((_action == CustomerQuotationAction.appeal ||
                _action == CustomerQuotationAction.reject) &&
            (value == null || value.isEmpty)) {
          return l10n.requiredField;
        }
        return null;
      },
    );
  }

  void _submitForm(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      _bloc.add(
        CustomerQuotationResponseEvent.submit(
          quotationId: widget.quotationId,
          action: _action,
          additionalDetails: _additionalDetailsController.text,
        ),
      );
    }
  }
}
