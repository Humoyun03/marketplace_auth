// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_code.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendCodeRequestImpl _$$SendCodeRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$SendCodeRequestImpl(
      json['reason'] as String,
      json['phone'] as String,
      json['otp_session_id'] as String,
    );

Map<String, dynamic> _$$SendCodeRequestImplToJson(
        _$SendCodeRequestImpl instance) =>
    <String, dynamic>{
      'reason': instance.reason,
      'phone': instance.phone,
      'otp_session_id': instance.otpSessionId,
    };
