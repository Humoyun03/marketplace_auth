

import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up.freezed.dart';

part 'sign_up.g.dart';

@freezed
class SignUpRequest with _$SignUpRequest {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory SignUpRequest(
      String code,
      String name,
      @JsonKey(name:"is_agreed")
      bool isAgreed,
      String phone,
      @JsonKey(name:"otp_session_id")
      String otpSessionId
      ) = _SignUpRequest;

  factory SignUpRequest.fromJson(Map<String, dynamic> json) =>
      _$SignUpRequestFromJson(json);
}
