import 'package:json_annotation/json_annotation.dart';
part 'logoutrequest.g.dart';


@JsonSerializable()
class LogOutRequestModel {
  final String token;

  LogOutRequestModel(this.token);
  factory LogOutRequestModel.fromJson(Map<String, dynamic> json) =>
      _$LogOutRequestModelFromJson(json);
  Map<String, dynamic> toJson() => _$LogOutRequestModelToJson(this);


}