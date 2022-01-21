part of 'artist_creation_bloc.dart';

enum ArtistCreationStep {
  artistAccountInfo,
  artistLocation,
  artistFinish,

  // TODO: NOT USED
  artistDescription,
  artistGenres,
}

class ArtistCreationState extends Equatable {
  final ArtistCreationFormState formState;
  final ArtistCreationStep step;
  final String message;
  final String errorMessage;

  const ArtistCreationState(
      {this.step = ArtistCreationStep.artistAccountInfo,
      this.message = '',
      this.errorMessage = '',
      this.formState = const ArtistCreationFormState()});

  ArtistCreationState copyWith({
    ArtistCreationFormState? formState,
    ArtistCreationStep? step,
    String? message,
    String? errorMessage,
  }) {
    return ArtistCreationState(
      formState: formState ?? this.formState,
      step: step ?? this.step,
      message: message ?? this.message,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  String toString() =>
      'ArtistCreationState(formState: $formState, step: $step, message: $message, errorMessage: $errorMessage)';

  @override
  List<Object> get props => [formState, step, message, errorMessage];
}
