// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpRequestImpl _$$SignUpRequestImplFromJson(Map<String, dynamic> json) =>
    _$SignUpRequestImpl(
      json['code'] as String,
      json['name'] as String,
      json['is_agreed'] as bool,
      json['phone'] as String,
      json['otp_session_id'] as String,
    );

Map<String, dynamic> _$$SignUpRequestImplToJson(_$SignUpRequestImpl instance) =>
    <String, dynamic>{
      'code': instance.code,
      'name': instance.name,
      'is_agreed': instance.isAgreed,
      'phone': instance.phone,
      'otp_session_id': instance.otpSessionId,
    };
