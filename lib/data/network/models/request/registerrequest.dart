import 'package:json_annotation/json_annotation.dart';

part 'registerrequest.g.dart';

@JsonSerializable()
class RegisterRequestModel {
  final String name, mobile, password, email;

  RegisterRequestModel(this.mobile, this.password, this.name, this.email);

  factory RegisterRequestModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterRequestModelFromJson(json);
  Map<String, dynamic> toJson() => _$RegisterRequestModelToJson(this);
}
