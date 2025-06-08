import 'package:json_annotation/json_annotation.dart';

enum ConsentType {
  @JsonValue('GENERAL_TERMS')
  generalTerms,
  @JsonValue('TATTOO_CONSENT')
  tattooConsent,
  @JsonValue('IMAGE_RELEASE')
  imageRelease,
  @JsonValue('OTHER')
  other;

  String get value {
    switch (this) {
      case ConsentType.generalTerms:
        return 'GENERAL_TERMS';
      case ConsentType.tattooConsent:
        return 'TATTOO_CONSENT';
      case ConsentType.imageRelease:
        return 'IMAGE_RELEASE';
      case ConsentType.other:
        return 'OTHER';
    }
  }

  static ConsentType fromString(String value) {
    return ConsentType.values.firstWhere(
      (e) => e.value == value,
      orElse: () => ConsentType.other,
    );
  }
} 