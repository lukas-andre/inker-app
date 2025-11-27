import 'package:json_annotation/json_annotation.dart';

/// Enum that represents different types of addresses
enum AddressType {
  @JsonValue('HOME')
  home,
  @JsonValue('DEPARTMENT')
  apartment,
  @JsonValue('OFFICE')
  office,
  @JsonValue('STUDIO')
  studio,
  @JsonValue('OTHER')
  other,
  none;

  String? get displayName {
    switch (this) {
      case AddressType.home:
        return 'Casa 🏠';
      case AddressType.apartment:
        return 'Departamento 🏢';
      case AddressType.office:
        return 'Oficina 🏢';
      case AddressType.studio:
        return 'Estudio 🏢';
      case AddressType.other:
        return 'Otro 🏢';
      default:
        return null;
    }
  }
}