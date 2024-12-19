import 'package:json_annotation/json_annotation.dart';

part 'send_verification_code_response.g.dart';

@JsonSerializable()
class SendVerificationCodeResponse {
  final String status;
  final SendVerificationCodeResponseData data;

  const SendVerificationCodeResponse({
    required this.status,
    required this.data,
  });

  factory SendVerificationCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$SendVerificationCodeResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SendVerificationCodeResponseToJson(this);
}

@JsonSerializable()
class SendVerificationCodeResponseData {
  final int userId;

  const SendVerificationCodeResponseData({required this.userId});

  factory SendVerificationCodeResponseData.fromJson(Map<String, dynamic> json) =>
      _$SendVerificationCodeResponseDataFromJson(json);

  Map<String, dynamic> toJson() => _$SendVerificationCodeResponseDataToJson(this);
}
