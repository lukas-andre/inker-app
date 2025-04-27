part of 'tattoo_generator_bloc.dart';

@freezed
class TattooGeneratorEvent with _$TattooGeneratorEvent {
  const factory TattooGeneratorEvent.started() = _Started;
  const factory TattooGeneratorEvent.generateTattoo({
    required String prompt,
    required TattooStyle style,
  }) = _GenerateTattoo;
  const factory TattooGeneratorEvent.resetState() = _ResetState;
  const factory TattooGeneratorEvent.updatePrompt(String prompt) = _UpdatePrompt;
  const factory TattooGeneratorEvent.updateStyle(TattooStyle style) = _UpdateStyle;
} 