


import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'send_code.freezed.dart';
part 'send_code.g.dart';

@freezed
class SendCodeResponse with _$SendCodeResponse {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory SendCodeResponse(
  bool success,
  Data data,
  dynamic error,
      ) = _SendCodeResponse;

  factory SendCodeResponse.fromJson(Map<String, dynamic> json) =>
      _$SendCodeResponseFromJson(json);
}

@freezed
class Data with _$Data {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Data(
  String message,
  Otp otp,
  bool otpEnabled,
      ) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}

@freezed
class Otp with _$Otp {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Otp(
  String phone,
  String message,
  int expires,
  int codeLength,
  String inputType,
  String sessionId,
  String type,
      ) = _Otp;

  factory Otp.fromJson(Map<String, dynamic> json) => _$OtpFromJson(json);
}
