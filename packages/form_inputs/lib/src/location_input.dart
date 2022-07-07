import 'package:equatable/equatable.dart';
import 'package:formz/formz.dart' show FormzInput;

enum LocationValidationError { empty }

class Location extends Equatable {
  const Location({
    required this.placeId,
    required this.description,
  });
  final String placeId;
  final String description;

  @override
  List<Object?> get props => [placeId, description];

  @override
  bool get stringify => true;
}

class LocationInput extends FormzInput<Location, LocationValidationError> {
  const LocationInput.pure()
      : super.pure(const Location(description: '', placeId: ''));
  const LocationInput.dirty(
      [Location value = const Location(description: '', placeId: '')])
      : super.dirty(value);

  @override
  LocationValidationError? validator(Location? value) {
    // TODO: improve location validator
    if (value != null && (value.placeId == '' || value.description == '')) {
      return LocationValidationError.empty;
    }
    return null;
  }
}
