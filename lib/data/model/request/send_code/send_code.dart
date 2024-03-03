

import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_code.freezed.dart';
part 'send_code.g.dart';

@freezed
class SendCodeRequest with _$SendCodeRequest {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory SendCodeRequest(
      String reason,
      String phone,
      @JsonKey(name:"otp_session_id")
      String otpSessionId
  ) = _SendCodeRequest;

  factory SendCodeRequest.fromJson(Map<String, dynamic> json) =>
      _$SendCodeRequestFromJson(json);
}
