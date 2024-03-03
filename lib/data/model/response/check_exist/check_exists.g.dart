// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'check_exists.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CheckExistsResponseImpl _$$CheckExistsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$CheckExistsResponseImpl(
      json['success'] as bool,
      Data.fromJson(json['data'] as Map<String, dynamic>),
      json['error'],
    );

Map<String, dynamic> _$$CheckExistsResponseImplToJson(
        _$CheckExistsResponseImpl instance) =>
    <String, dynamic>{
      'success': instance.success,
      'data': instance.data.toJson(),
      'error': instance.error,
    };

_$DataImpl _$$DataImplFromJson(Map<String, dynamic> json) => _$DataImpl(
      json['exists'] as bool,
    );

Map<String, dynamic> _$$DataImplToJson(_$DataImpl instance) =>
    <String, dynamic>{
      'exists': instance.exists,
    };
