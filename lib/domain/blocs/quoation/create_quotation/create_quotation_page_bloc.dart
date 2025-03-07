import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:inker_studio/domain/models/quotation/quotation.dart';
import 'package:inker_studio/domain/services/quotation/quotation_service.dart';
import 'package:inker_studio/domain/services/session/local_session_service.dart';
import 'package:inker_studio/utils/dev.dart';

part 'create_quotation_page_event.dart';
part 'create_quotation_page_state.dart';
part 'create_quotation_page_bloc.freezed.dart';

class CreateQuotationPageBloc
    extends Bloc<CreateQuotationPageEvent, CreateQuotationPageState> {
  final QuotationService _quotationService;
  final LocalSessionService _sessionService;
  static const int maxReferenceImages = 5;

  CreateQuotationPageBloc(
      {required QuotationService quotationService,
      required LocalSessionService sessionService})
      : _quotationService = quotationService,
        _sessionService = sessionService,
        super(const CreateQuotationPageState.initial()) {
    on<CreateQuotationPageEvent>((event, emit) async {
      await event.when(
        started: () async => _started(emit),
        createQuotation:
            (Quotation quotation, List<XFile> referenceImages) async =>
                _createQuotation(emit, quotation, referenceImages),
        addReferenceImages: (List<XFile> newImages) async =>
            _addReferenceImages(emit, newImages),
        removeReferenceImage: (XFile image) async =>
            _removeReferenceImage(emit, image),
      );
    });
  }

  Future<void> _started(Emitter<CreateQuotationPageState> emit) async {
    emit(const CreateQuotationPageState.initial());
  }

  Future<void> _createQuotation(Emitter<CreateQuotationPageState> emit,
      Quotation quotation, List<XFile> referenceImages) async {
    emit(CreateQuotationPageState.loading(
        referenceImages: state.referenceImages));
    try {
      final token = await _sessionService.getActiveSessionToken();

      if (token == null) {
        emit(CreateQuotationPageState.error('No se ha iniciado sesión.',
            referenceImages: state.referenceImages));
        return;
      }

      final result = await _quotationService.createQuotation(
          quotation, referenceImages, token);
      emit(CreateQuotationPageState.quotationCreated(
        id: result['id'],
        message: result['message'],
        created: result['created'],
        referenceImages: referenceImages,
      ));
    } catch (e) {
      dev.log(e.toString(), 'error');
      emit(CreateQuotationPageState.error(e.toString(),
          referenceImages: state.referenceImages));
    }
  }

  Future<void> _addReferenceImages(
      Emitter<CreateQuotationPageState> emit, List<XFile> newImages) async {
    final currentImages = state.referenceImages;
    final remainingSlots = maxReferenceImages - currentImages.length;
    final imagesToAdd = newImages.take(remainingSlots).toList();

    final updatedImages = List<XFile>.from(currentImages)..addAll(imagesToAdd);

    if (newImages.length > remainingSlots) {
      emit(CreateQuotationPageState.imageAdded(
        referenceImages: updatedImages,
        message:
            'Se han añadido $remainingSlots imágenes. Límite máximo alcanzado.',
      ));
    } else {
      emit(CreateQuotationPageState.imageAdded(
        referenceImages: updatedImages,
        message: 'Se han añadido ${imagesToAdd.length} imágenes.',
      ));
    }
  }

  Future<void> _removeReferenceImage(
      Emitter<CreateQuotationPageState> emit, XFile image) async {
    final updatedImages = List<XFile>.from(state.referenceImages)
      ..remove(image);
    emit(CreateQuotationPageState.imageAdded(
      referenceImages: updatedImages,
      message: 'Imagen eliminada.',
    ));
  }
}
