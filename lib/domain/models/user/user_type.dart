import 'package:json_annotation/json_annotation.dart';

class UserType {
  static const String customer = 'CUSTOMER';
  static const String artist = 'ARTIST';
}

enum UserTypeEnum {
  @JsonValue(UserType.customer)
  customer,
  @JsonValue(UserType.artist)
  artist;

  String get name {
    switch (this) {
      case UserTypeEnum.customer:
        return UserType.customer;
      case UserTypeEnum.artist:
        return UserType.artist;
    }
  }
}
