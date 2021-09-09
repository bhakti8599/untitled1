import 'package:json_annotation/json_annotation.dart';
part 'registerresponce.g.dart';

@JsonSerializable()
class RegisterResponse {
  final String message;
  final User user;

  RegisterResponse(this.message, this.user);
  factory RegisterResponse.fromJson(Map<String, dynamic> json) => _$RegisterResponseFromJson(json);
  Map<String, dynamic> toJson() => _$RegisterResponseToJson(this);

}

@JsonSerializable()
class User {
  final String name,email, mobile, role,  created_at, updated_at;






  @JsonKey(name: '_id')
  final String id;


  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  User(this.name, this.email, this.mobile, this.role, this.created_at, this.updated_at, this.id);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
