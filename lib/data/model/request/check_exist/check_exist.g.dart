// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_exist.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckExistRequestImpl _$$CheckExistRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckExistRequestImpl(
      json['code'] as String,
      json['phone'] as String,
      json['otp_session_id'] as String,
    );

Map<String, dynamic> _$$CheckExistRequestImplToJson(
        _$CheckExistRequestImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'phone': instance.phone,
      'otp_session_id': instance.otpSessionId,
    };
