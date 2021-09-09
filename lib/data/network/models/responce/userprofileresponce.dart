import 'package:json_annotation/json_annotation.dart';
part 'userprofileresponce.g.dart';

@JsonSerializable()
class UserData {
  final String name,email, mobile, role,  created_at, updated_at,email_verified_at;

  final int id;


  factory UserData.fromJson(Map<String, dynamic> json) => _$UserDataFromJson(json);

  UserData(this.name, this.email, this.mobile, this.role, this.created_at, this.updated_at, this.email_verified_at, this.id);

  Map<String, dynamic> toJson() => _$UserDataToJson(this);
}
