
import 'package:json_annotation/json_annotation.dart';

part 'editprofileresponce.g.dart';


@JsonSerializable()
class EditProfileResponse {
  final String message;
  final UserDetails user_details;

  EditProfileResponse(this.message, this.user_details);
  factory EditProfileResponse.fromJson(Map<String, dynamic> json) => _$EditProfileResponseFromJson(json);
  Map<String, dynamic> toJson() => _$EditProfileResponseToJson(this);
}
@JsonSerializable()
class UserDetails{
  final int id;
  final String student_id,full_name,email,date_of_birth,mobile,gender,address_line,city,state,pincode,updated_at,created_at;

  UserDetails(this.id, this.student_id, this.full_name, this.email, this.date_of_birth, this.mobile, this.gender, this.address_line, this.city, this.state, this.pincode, this.updated_at, this.created_at);
  factory UserDetails.fromJson(Map<String, dynamic> json) => _$UserDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$UserDetailsToJson(this);
}