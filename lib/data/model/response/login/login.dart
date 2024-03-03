
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login.freezed.dart';
part 'login.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory LoginResponse(
      bool success,
      Data data,
      dynamic error,
      ) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}
@freezed
class Data with _$Data {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Data(
      String accessToken,
      String refreshToken,
      String type,
      int expiresIn,
      ) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
