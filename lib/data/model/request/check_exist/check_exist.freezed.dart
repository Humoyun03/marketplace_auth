// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'check_exist.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CheckExistRequest _$CheckExistRequestFromJson(Map<String, dynamic> json) {
  return _CheckExistRequest.fromJson(json);
}

/// @nodoc
mixin _$CheckExistRequest {
  String get code => throw _privateConstructorUsedError;
  String get phone => throw _privateConstructorUsedError;
  @JsonKey(name: "otp_session_id")
  String get otpSessionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckExistRequestCopyWith<CheckExistRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckExistRequestCopyWith<$Res> {
  factory $CheckExistRequestCopyWith(
          CheckExistRequest value, $Res Function(CheckExistRequest) then) =
      _$CheckExistRequestCopyWithImpl<$Res, CheckExistRequest>;
  @useResult
  $Res call(
      {String code,
      String phone,
      @JsonKey(name: "otp_session_id") String otpSessionId});
}

/// @nodoc
class _$CheckExistRequestCopyWithImpl<$Res, $Val extends CheckExistRequest>
    implements $CheckExistRequestCopyWith<$Res> {
  _$CheckExistRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? phone = null,
    Object? otpSessionId = null,
  }) {
    return _then(_value.copyWith(
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      otpSessionId: null == otpSessionId
          ? _value.otpSessionId
          : otpSessionId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CheckExistRequestImplCopyWith<$Res>
    implements $CheckExistRequestCopyWith<$Res> {
  factory _$$CheckExistRequestImplCopyWith(_$CheckExistRequestImpl value,
          $Res Function(_$CheckExistRequestImpl) then) =
      __$$CheckExistRequestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String code,
      String phone,
      @JsonKey(name: "otp_session_id") String otpSessionId});
}

/// @nodoc
class __$$CheckExistRequestImplCopyWithImpl<$Res>
    extends _$CheckExistRequestCopyWithImpl<$Res, _$CheckExistRequestImpl>
    implements _$$CheckExistRequestImplCopyWith<$Res> {
  __$$CheckExistRequestImplCopyWithImpl(_$CheckExistRequestImpl _value,
      $Res Function(_$CheckExistRequestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? code = null,
    Object? phone = null,
    Object? otpSessionId = null,
  }) {
    return _then(_$CheckExistRequestImpl(
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      null == otpSessionId
          ? _value.otpSessionId
          : otpSessionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
class _$CheckExistRequestImpl implements _CheckExistRequest {
  const _$CheckExistRequestImpl(this.code, this.phone,
      @JsonKey(name: "otp_session_id") this.otpSessionId);

  factory _$CheckExistRequestImpl.fromJson(Map<String, dynamic> json) =>
      _$$CheckExistRequestImplFromJson(json);

  @override
  final String code;
  @override
  final String phone;
  @override
  @JsonKey(name: "otp_session_id")
  final String otpSessionId;

  @override
  String toString() {
    return 'CheckExistRequest(code: $code, phone: $phone, otpSessionId: $otpSessionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckExistRequestImpl &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.otpSessionId, otpSessionId) ||
                other.otpSessionId == otpSessionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, code, phone, otpSessionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckExistRequestImplCopyWith<_$CheckExistRequestImpl> get copyWith =>
      __$$CheckExistRequestImplCopyWithImpl<_$CheckExistRequestImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CheckExistRequestImplToJson(
      this,
    );
  }
}

abstract class _CheckExistRequest implements CheckExistRequest {
  const factory _CheckExistRequest(final String code, final String phone,
          @JsonKey(name: "otp_session_id") final String otpSessionId) =
      _$CheckExistRequestImpl;

  factory _CheckExistRequest.fromJson(Map<String, dynamic> json) =
      _$CheckExistRequestImpl.fromJson;

  @override
  String get code;
  @override
  String get phone;
  @override
  @JsonKey(name: "otp_session_id")
  String get otpSessionId;
  @override
  @JsonKey(ignore: true)
  _$$CheckExistRequestImplCopyWith<_$CheckExistRequestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
