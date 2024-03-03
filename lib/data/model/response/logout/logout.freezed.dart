// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LogOutResponse _$LogOutResponseFromJson(Map<String, dynamic> json) {
  return _LogOutResponse.fromJson(json);
}

/// @nodoc
mixin _$LogOutResponse {
  bool get success => throw _privateConstructorUsedError;
  Data get data => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LogOutResponseCopyWith<LogOutResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogOutResponseCopyWith<$Res> {
  factory $LogOutResponseCopyWith(
          LogOutResponse value, $Res Function(LogOutResponse) then) =
      _$LogOutResponseCopyWithImpl<$Res, LogOutResponse>;
  @useResult
  $Res call({bool success, Data data, dynamic error});

  $DataCopyWith<$Res> get data;
}

/// @nodoc
class _$LogOutResponseCopyWithImpl<$Res, $Val extends LogOutResponse>
    implements $LogOutResponseCopyWith<$Res> {
  _$LogOutResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DataCopyWith<$Res> get data {
    return $DataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LogOutResponseImplCopyWith<$Res>
    implements $LogOutResponseCopyWith<$Res> {
  factory _$$LogOutResponseImplCopyWith(_$LogOutResponseImpl value,
          $Res Function(_$LogOutResponseImpl) then) =
      __$$LogOutResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool success, Data data, dynamic error});

  @override
  $DataCopyWith<$Res> get data;
}

/// @nodoc
class __$$LogOutResponseImplCopyWithImpl<$Res>
    extends _$LogOutResponseCopyWithImpl<$Res, _$LogOutResponseImpl>
    implements _$$LogOutResponseImplCopyWith<$Res> {
  __$$LogOutResponseImplCopyWithImpl(
      _$LogOutResponseImpl _value, $Res Function(_$LogOutResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = null,
    Object? data = null,
    Object? error = freezed,
  }) {
    return _then(_$LogOutResponseImpl(
      null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Data,
      freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$LogOutResponseImpl implements _LogOutResponse {
  const _$LogOutResponseImpl(this.success, this.data, this.error);

  factory _$LogOutResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LogOutResponseImplFromJson(json);

  @override
  final bool success;
  @override
  final Data data;
  @override
  final dynamic error;

  @override
  String toString() {
    return 'LogOutResponse(success: $success, data: $data, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogOutResponseImpl &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.data, data) || other.data == data) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, success, data, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LogOutResponseImplCopyWith<_$LogOutResponseImpl> get copyWith =>
      __$$LogOutResponseImplCopyWithImpl<_$LogOutResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LogOutResponseImplToJson(
      this,
    );
  }
}

abstract class _LogOutResponse implements LogOutResponse {
  const factory _LogOutResponse(
          final bool success, final Data data, final dynamic error) =
      _$LogOutResponseImpl;

  factory _LogOutResponse.fromJson(Map<String, dynamic> json) =
      _$LogOutResponseImpl.fromJson;

  @override
  bool get success;
  @override
  Data get data;
  @override
  dynamic get error;
  @override
  @JsonKey(ignore: true)
  _$$LogOutResponseImplCopyWith<_$LogOutResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Data _$DataFromJson(Map<String, dynamic> json) {
  return _Data.fromJson(json);
}

/// @nodoc
mixin _$Data {
  bool get exists => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DataCopyWith<Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataCopyWith<$Res> {
  factory $DataCopyWith(Data value, $Res Function(Data) then) =
      _$DataCopyWithImpl<$Res, Data>;
  @useResult
  $Res call({bool exists});
}

/// @nodoc
class _$DataCopyWithImpl<$Res, $Val extends Data>
    implements $DataCopyWith<$Res> {
  _$DataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exists = null,
  }) {
    return _then(_value.copyWith(
      exists: null == exists
          ? _value.exists
          : exists // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DataImplCopyWith<$Res> implements $DataCopyWith<$Res> {
  factory _$$DataImplCopyWith(
          _$DataImpl value, $Res Function(_$DataImpl) then) =
      __$$DataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool exists});
}

/// @nodoc
class __$$DataImplCopyWithImpl<$Res>
    extends _$DataCopyWithImpl<$Res, _$DataImpl>
    implements _$$DataImplCopyWith<$Res> {
  __$$DataImplCopyWithImpl(_$DataImpl _value, $Res Function(_$DataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exists = null,
  }) {
    return _then(_$DataImpl(
      null == exists
          ? _value.exists
          : exists // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$DataImpl implements _Data {
  const _$DataImpl(this.exists);

  factory _$DataImpl.fromJson(Map<String, dynamic> json) =>
      _$$DataImplFromJson(json);

  @override
  final bool exists;

  @override
  String toString() {
    return 'Data(exists: $exists)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DataImpl &&
            (identical(other.exists, exists) || other.exists == exists));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, exists);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      __$$DataImplCopyWithImpl<_$DataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DataImplToJson(
      this,
    );
  }
}

abstract class _Data implements Data {
  const factory _Data(final bool exists) = _$DataImpl;

  factory _Data.fromJson(Map<String, dynamic> json) = _$DataImpl.fromJson;

  @override
  bool get exists;
  @override
  @JsonKey(ignore: true)
  _$$DataImplCopyWith<_$DataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
