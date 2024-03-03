
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_exists.freezed.dart';
part 'check_exists.g.dart';

@freezed
class CheckExistsResponse with _$CheckExistsResponse {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory CheckExistsResponse(
  bool success,
  Data data,
  dynamic error,
      ) = _CheckExistsResponse;

  factory CheckExistsResponse.fromJson(Map<String, dynamic> json) =>
      _$CheckExistsResponseFromJson(json);
}

@freezed
class Data with _$Data {
  @JsonSerializable(explicitToJson: true, fieldRename: FieldRename.snake)
  const factory Data(
  bool exists
      ) = _Data;

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);
}