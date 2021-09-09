import 'package:json_annotation/json_annotation.dart';

part 'loginrequest.g.dart';

@JsonSerializable()
class LoginRequestModel {
  final String username, password;

  LoginRequestModel(this.username, this.password);
  // ignore: prefer_initializing_formals

  factory LoginRequestModel.fromJson(Map<String, dynamic> json) =>
      _$LoginRequestModelFromJson(json);
  Map<String, dynamic> toJson() => _$LoginRequestModelToJson(this);
}
