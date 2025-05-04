import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:inker_studio/domain/blocs/quoation/quotation_list/quotation_list_bloc.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';

class EditOpenQuotationPage extends StatefulWidget {
  final Quotation quotation;
  const EditOpenQuotationPage({Key? key, required this.quotation}) : super(key: key);

  @override
  State<EditOpenQuotationPage> createState() => _EditOpenQuotationPageState();
}

class _EditOpenQuotationPageState extends State<EditOpenQuotationPage> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _descriptionController;
  late TextEditingController _referenceBudgetController;
  bool _isSaving = false;

  @override
  void initState() {
    super.initState();
    _descriptionController = TextEditingController(text: widget.quotation.description);
    _referenceBudgetController = TextEditingController(
      text: widget.quotation.referenceBudget?.toFloat().toString() ?? '',
    );
  }

  @override
  void dispose() {
    _descriptionController.dispose();
    _referenceBudgetController.dispose();
    super.dispose();
  }

  void _save() async {
    if (!_formKey.currentState!.validate()) return;
    setState(() => _isSaving = true);
    final referenceBudget = _referenceBudgetController.text.isNotEmpty
        ? Money.fromFloat(double.tryParse(_referenceBudgetController.text) ?? 0, 'CLP', 2)
        : null;
    final description = _descriptionController.text.trim();

    context.read<QuotationListBloc>().add(
      QuotationListEvent.updateOpenQuotation(
        quotationId: widget.quotation.id,
        description: description,
        referenceBudget: referenceBudget,
      ),
    );
    await Future.delayed(const Duration(milliseconds: 500));
    if (mounted) Navigator.of(context).pop(true);
  }

  @override
  Widget build(BuildContext context) {
    final l10n = S.of(context);
    return Scaffold(
      backgroundColor: primaryColor,
      appBar: AppBar(
        backgroundColor: primaryColor,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
        title: Text(l10n.edit, style: TextStyleTheme.headline2),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Text(
                l10n.description,
                style: TextStyleTheme.headline3.copyWith(
                  color: quaternaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: _descriptionController,
                style: TextStyleTheme.bodyText1,
                maxLines: 5,
                minLines: 2,
                decoration: InputDecoration(
                  hintText: l10n.describeYourTattooIdea,
                  hintStyle: hintTextStyle,
                  fillColor: inputBackgroundColor,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                ),
                validator: (v) => v == null || v.isEmpty ? 'Este campo es requerido' : null,
              ),
              const SizedBox(height: 28),
              Text(
                'Presupuesto de referencia (CLP)',
                style: TextStyleTheme.headline3.copyWith(
                  color: quaternaryColor,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 12),
              TextFormField(
                controller: _referenceBudgetController,
                style: TextStyleTheme.bodyText1,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'Ej: 50000',
                  hintStyle: hintTextStyle,
                  fillColor: inputBackgroundColor,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                  prefixIcon: const Icon(Icons.attach_money, color: secondaryColor),
                ),
              ),
              const SizedBox(height: 40),
              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton.icon(
                  icon: _isSaving
                      ? const SizedBox(
                          width: 20,
                          height: 20,
                          child: CircularProgressIndicator(strokeWidth: 2, color: Colors.white),
                        )
                      : const Icon(Icons.save),
                  label: Text(_isSaving ? 'Guardando...' : l10n.save,
                      style: TextStyleTheme.button.copyWith(fontSize: 18)),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: secondaryColor,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    elevation: 2,
                  ),
                  onPressed: _isSaving ? null : _save,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
} 