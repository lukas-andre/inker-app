import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/domain/blocs/quoation/create_quotation/create_quotation_page_bloc.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/domain/services/quotation/quotation_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/customer/quotation/widgets/image_picker.dart';
import 'package:inker_studio/ui/shared/success_animation_page.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';

class CreateQuotationPage extends StatefulWidget {
  final int artistId;

  const CreateQuotationPage({super.key, required this.artistId});

  @override
  _CreateQuotationPageState createState() => _CreateQuotationPageState();

  static const String routeName = '/create-quotation';

  static Route<dynamic> route({required int artistId}) {
    return MaterialPageRoute<dynamic>(
      settings: const RouteSettings(name: routeName),
      builder: (BuildContext context) =>
          CreateQuotationPage(artistId: artistId),
    );
  }
}

class _CreateQuotationPageState extends State<CreateQuotationPage> {
  final TextEditingController _descriptionController = TextEditingController();
  final TextEditingController _appointmentDateController =
      TextEditingController();
  final ImagePicker _picker = ImagePicker();
  final FocusNode _descriptionFocusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CreateQuotationPageBloc(
        quotationService: context.read<QuotationService>(),
        sessionService: context.read<LocalSessionService>(),
      )..add(const CreateQuotationPageEvent.started()),
      child: BlocConsumer<CreateQuotationPageBloc, CreateQuotationPageState>(
        listener: (context, state) {
          state.maybeWhen(
            loading: (_) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SuccessAnimationPage(
                    title: 'Procesando',
                    subtitle: 'Estamos creando tu cotización...',
                    state: AnimationState.loading,
                    onAnimationComplete: () {},
                  ),
                ),
              );
            },
            quotationCreated: (id, message, created, referenceImages) {
              if (created) {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) => SuccessAnimationPage(
                      title: '¡Cotización Enviada!',
                      subtitle:
                          "Solicitud recibida. El artista responderá pronto. Revisa 'Mis Solicitudes' para ver el estado.",
                      state: AnimationState.completed,
                      onAnimationComplete: () {
                        Navigator.of(context).pop();
                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                );
              }
            },
            error: (errorMessage, referenceImages) {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => SuccessAnimationPage(
                    title: 'Error',
                    subtitle: errorMessage,
                    state: AnimationState.error,
                    onAnimationComplete: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              );
            },
            orElse: () {},
          );
        },
        builder: (context, state) {
          return GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Scaffold(
              appBar: AppBar(
                title: Text(S.of(context).createQuotation,
                    style: TextStyleTheme.copyWith(color: Colors.white)),
                backgroundColor: primaryColor,
              ),
              backgroundColor: primaryColor,
              body: SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextField(
                      controller: _descriptionController,
                      focusNode: _descriptionFocusNode,
                      decoration: InputDecoration(
                        labelText: 'Descripción del trabajo',
                        labelStyle:
                            TextStyleTheme.copyWith(color: Colors.white),
                        suffixIcon: IconButton(
                          icon: const Icon(Icons.check, color: Colors.white),
                          onPressed: () => FocusScope.of(context).unfocus,
                        ),
                      ),
                      style: TextStyleTheme.copyWith(color: Colors.white),
                      maxLines: 3,
                    ),
                    const SizedBox(height: 16),
                    GestureDetector(
                      onTap: () {
                        _selectDate(context);
                        FocusScope.of(context).unfocus();
                      },
                      child: AbsorbPointer(
                        child: TextField(
                          controller: _appointmentDateController,
                          decoration: InputDecoration(
                            labelText: 'Fecha deseada para la cita',
                            labelStyle:
                                TextStyleTheme.copyWith(color: Colors.white),
                            suffixIcon: const Icon(Icons.calendar_today,
                                color: Colors.white),
                          ),
                          style: TextStyleTheme.copyWith(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(height: 24),
                    ImagePickerWidget(
                      images: state.referenceImages,
                      onRemove: (image) => context
                          .read<CreateQuotationPageBloc>()
                          .add(CreateQuotationPageEvent.removeReferenceImage(
                              image)),
                      onAdd: () {
                        FocusScope.of(context).unfocus();
                        _pickImage(context.read<CreateQuotationPageBloc>());
                      },
                      maxImages: CreateQuotationPageBloc.maxReferenceImages,
                    ),
                    const SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: state.maybeWhen(
                        loading: (_) => null,
                        orElse: () => () => _submitQuotation(context),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: secondaryColor,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                      ),
                      child: state.maybeWhen(
                        loading: (_) => const CircularProgressIndicator(
                            color: Colors.white),
                        orElse: () => Text('Enviar Cotización',
                            style:
                                TextStyleTheme.copyWith(color: Colors.white)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    FocusScope.of(context).unfocus();

    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(const Duration(days: 365)),
    );

    if (picked != null) {
      setState(() {
        _appointmentDateController.text =
            picked.toIso8601String().split('T')[0];
      });
    }
  }

  Future<void> _pickImage(CreateQuotationPageBloc bloc) async {
    final List<XFile> images = await _picker.pickMultiImage();
    if (images.isNotEmpty) {
      bloc.add(CreateQuotationPageEvent.addReferenceImages(images));
    }
  }

  void _submitQuotation(BuildContext context) {
    if (_descriptionController.text.isEmpty ||
        _appointmentDateController.text.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Por favor, complete todos los campos')),
      );
      return;
    }

    final quotation = Quotation(
      id: 0,
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      customerId: 1,
      artistId: widget.artistId,
      description: _descriptionController.text,
      status: QuotationStatus.pending,
      appointmentDate: DateTime.parse(_appointmentDateController.text),
    );

    context.read<CreateQuotationPageBloc>().add(
        CreateQuotationPageEvent.createQuotation(quotation,
            context.read<CreateQuotationPageBloc>().state.referenceImages));
  }

  @override
  void dispose() {
    _descriptionController.dispose();
    _appointmentDateController.dispose();
    _descriptionFocusNode.dispose();
    super.dispose();
  }
}
