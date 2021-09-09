import 'package:json_annotation/json_annotation.dart';
part 'logoutresponce.g.dart';

@JsonSerializable()
class LogOutResponse {
  final String message;

  LogOutResponse(this.message);
  factory LogOutResponse.fromJson(Map<String, dynamic> json) => _$LogOutResponseFromJson(json);
  Map<String, dynamic> toJson() => _$LogOutResponseToJson(this);
}