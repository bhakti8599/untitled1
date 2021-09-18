
import 'package:json_annotation/json_annotation.dart';
part 'loginrespose.g.dart';

@JsonSerializable()
class LoginResponse {
  final User user;
  final String access_token,token_type;
  final int expires_in;
  final bool success;



  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);

  LoginResponse(this.user, this.access_token, this.token_type, this.expires_in, this.success);
  Map<String, dynamic> toJson() => _$LoginResponseToJson(this);
}

@JsonSerializable()
class User {
  final String name,email, mobile, role,  created_at, updated_at,email_verified_at;

  final int id;


  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  User(this.name, this.email, this.mobile, this.role, this.created_at, this.updated_at, this.email_verified_at, this.id);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
