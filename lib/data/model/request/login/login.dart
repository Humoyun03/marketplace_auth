
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login.freezed.dart';

part 'login.g.dart';

@freezed
class LoginRequest with _$LoginRequest {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory LoginRequest(
      String code,
      String phone,
      @JsonKey(name:"otp_session_id")
      String otpSessionId
      ) = _LoginRequest;

  factory LoginRequest.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestFromJson(json);
}
