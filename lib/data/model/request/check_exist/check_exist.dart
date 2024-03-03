

import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_exist.freezed.dart';

part 'check_exist.g.dart';

@freezed
class CheckExistRequest with _$CheckExistRequest {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory CheckExistRequest(
      String code,
      String phone,
      @JsonKey(name:"otp_session_id")
      String otpSessionId
      ) = _CheckExistRequest;

  factory CheckExistRequest.fromJson(Map<String, dynamic> json) =>
      _$CheckExistRequestFromJson(json);
}
