// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_code.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SendCodeResponseImpl _$$SendCodeResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SendCodeResponseImpl(
      json['success'] as bool,
      Data.fromJson(json['data'] as Map<String, dynamic>),
      json['error'],
    );

Map<String, dynamic> _$$SendCodeResponseImplToJson(
        _$SendCodeResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data.toJson(),
      'error': instance.error,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      json['message'] as String,
      Otp.fromJson(json['otp'] as Map<String, dynamic>),
      json['otp_enabled'] as bool,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'otp': instance.otp.toJson(),
      'otp_enabled': instance.otpEnabled,
    };

_$OtpImpl _$$OtpImplFromJson(Map<String, dynamic> json) => _$OtpImpl(
      json['phone'] as String,
      json['message'] as String,
      json['expires'] as int,
      json['code_length'] as int,
      json['input_type'] as String,
      json['session_id'] as String,
      json['type'] as String,
    );

Map<String, dynamic> _$$OtpImplToJson(_$OtpImpl instance) => <String, dynamic>{
      'phone': instance.phone,
      'message': instance.message,
      'expires': instance.expires,
      'code_length': instance.codeLength,
      'input_type': instance.inputType,
      'session_id': instance.sessionId,
      'type': instance.type,
    };
