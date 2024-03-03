import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'logout.freezed.dart';
part 'logout.g.dart';

@freezed
class LogOutResponse with _$LogOutResponse {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory LogOutResponse(
      bool success,
      Data data,
      dynamic error,
      ) = _LogOutResponse;

  factory LogOutResponse.fromJson(Map<String, dynamic> json) =>
      _$LogOutResponseFromJson(json);
}

@freezed
class Data with _$Data {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Data(
      bool exists
      ) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}
