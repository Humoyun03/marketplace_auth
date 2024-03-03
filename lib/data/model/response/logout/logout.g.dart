// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logout.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LogOutResponseImpl _$$LogOutResponseImplFromJson(Map<String, dynamic> json) =>
    _$LogOutResponseImpl(
      json['success'] as bool,
      Data.fromJson(json['data'] as Map<String, dynamic>),
      json['error'],
    );

Map<String, dynamic> _$$LogOutResponseImplToJson(
        _$LogOutResponseImpl instance) =>
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
