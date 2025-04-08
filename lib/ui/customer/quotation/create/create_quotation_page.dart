import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/domain/blocs/quoation/create_quotation/create_quotation_page_bloc.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/domain/models/stencil/stencil.dart';
import 'package:inker_studio/domain/services/quotation/quotation_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/generated/l10n.dart';
import 'package:inker_studio/ui/customer/quotation/widgets/image_picker.dart';
import 'package:inker_studio/ui/shared/success_animation_page.dart';
import 'package:inker_studio/ui/theme/text_style_theme.dart';
import 'package:inker_studio/utils/styles/app_styles.dart';
import 'package:cached_network_image/cached_network_image.dart';

class CreateQuotationPage extends StatefulWidget {
  final String artistId;
  final Stencil? stencil; // Stencil opcional para cotización directa

  const CreateQuotationPage({
    super.key, 
    required this.artistId,
    this.stencil,
  });

  @override
  _CreateQuotationPageState createState() => _CreateQuotationPageState();

  static const String routeName = '/create-quotation';

  static Route<dynamic> route({required String artistId, Stencil? stencil}) {
    return MaterialPageRoute<dynamic>(
      settings: const RouteSettings(name: routeName),
      builder: (BuildContext context) => CreateQuotationPage(
        artistId: artistId,
        stencil: stencil,
      ),
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
  void initState() {
    super.initState();
    
    // Si hay un stencil seleccionado, pre-poblar la descripción
    if (widget.stencil != null) {
      final stencil = widget.stencil!;
      final stencilTitle = stencil.title;
      
      _descriptionController.text = 'Solicito cotización para el diseño "$stencilTitle" ${stencil.description != null && stencil.description!.isNotEmpty 
              ? 'con descripción: ${stencil.description}. ' 
              : '. '}Me gustaría obtener más información sobre tamaños, precios y disponibilidad.';
    }
  }

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
                iconTheme: const IconThemeData(color: Colors.white),
                title: Text(widget.stencil != null 
                    ? 'Cotizar Diseño' 
                    : S.of(context).createQuotation,
                  style: TextStyleTheme.copyWith(color: Colors.white)),
                backgroundColor: primaryColor,
              ),
              backgroundColor: primaryColor,
              body: SingleChildScrollView(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    // Mostrar vista previa del stencil si está disponible
                    if (widget.stencil != null) ...[
                      _buildStencilPreview(widget.stencil!),
                      const SizedBox(height: 24),
                    ],
                    
                    TextField(
                      key: const Key('createQuotationDescriptionField'),
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
                      maxLines: 5,
                    ),
                    const SizedBox(height: 16),
                    GestureDetector(
                      key: const Key('createQuotationDateField'),
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
                    Text(
                      'Imágenes de referencia adicionales:',
                      style: TextStyleTheme.copyWith(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8),
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
                    const SizedBox(height: 32),
                    ElevatedButton(
                      key: const Key('createQuotationSubmitButton'),
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
                        orElse: () => Text(
                          'Enviar Solicitud de Cotización',
                          style: TextStyleTheme.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
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

  // Widget para mostrar la vista previa del stencil seleccionado
  Widget _buildStencilPreview(Stencil stencil) {
    return Container(
      decoration: BoxDecoration(
        color: HSLColor.fromColor(primaryColor).withLightness(0.25).toColor(),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            blurRadius: 8,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(12),
            ),
            child: AspectRatio(
              aspectRatio: 1.5,
              child: CachedNetworkImage(
                imageUrl: stencil.imageUrl,
                fit: BoxFit.cover,
                placeholder: (context, url) => Container(
                  color: HSLColor.fromColor(primaryColor).withLightness(0.2).toColor(),
                  child: const Center(
                    child: CircularProgressIndicator(color: Colors.white),
                  ),
                ),
                errorWidget: (context, url, error) => Container(
                  color: HSLColor.fromColor(primaryColor).withLightness(0.2).toColor(),
                  child: const Icon(Icons.error, color: redColor, size: 32),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Diseño seleccionado:',
                  style: TextStyleTheme.bodyText2.copyWith(
                    color: Colors.white70,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  stencil.title,
                  style: TextStyleTheme.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                if (stencil.description != null && stencil.description!.isNotEmpty) ...[
                  const SizedBox(height: 8),
                  Text(
                    stencil.description!,
                    style: TextStyleTheme.bodyText2.copyWith(
                      color: Colors.white.withOpacity(0.8),
                    ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
                const SizedBox(height: 12),
                Row(
                  children: [
                    const Icon(Icons.info_outline, color: secondaryColor, size: 18),
                    const SizedBox(width: 8),
                    Expanded(
                      child: Text(
                        'Este diseño se incluirá como referencia en tu solicitud',
                        style: TextStyleTheme.caption.copyWith(
                          color: Colors.white.withOpacity(0.8),
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
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
      id: '',
      createdAt: DateTime.now(),
      updatedAt: DateTime.now(),
      customerId: '',
      artistId: widget.artistId,
      description: _descriptionController.text + 
          (widget.stencil != null ? '\n\nCotización para stencil ID: ${widget.stencil!.id}' : ''),
      status: QuotationStatus.pending,
      appointmentDate: DateTime.parse(_appointmentDateController.text),
      stencilId: widget.stencil?.id,
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
