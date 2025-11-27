// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_verification_code_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SendVerificationCodeResponse _$SendVerificationCodeResponseFromJson(Map json) =>
    SendVerificationCodeResponse(
      status: json['status'] as String,
      data: SendVerificationCodeResponseData.fromJson(
          Map<String, dynamic>.from(json['data'] as Map)),
    );

Map<String, dynamic> _$SendVerificationCodeResponseToJson(
        SendVerificationCodeResponse instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data.toJson(),
    };

SendVerificationCodeResponseData _$SendVerificationCodeResponseDataFromJson(
        Map json) =>
    SendVerificationCodeResponseData(
      userId: json['userId'] as String,
    );

Map<String, dynamic> _$SendVerificationCodeResponseDataToJson(
        SendVerificationCodeResponseData instance) =>
    <String, dynamic>{
      'userId': instance.userId,
    };
