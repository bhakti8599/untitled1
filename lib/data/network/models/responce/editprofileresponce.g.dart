// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'editprofileresponce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditProfileResponse _$EditProfileResponseFromJson(Map<String, dynamic> json) {
  return EditProfileResponse(
    json['message'] as String,
    UserDetails.fromJson(json['user_details'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$EditProfileResponseToJson(
        EditProfileResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user_details': instance.user_details,
    };

UserDetails _$UserDetailsFromJson(Map<String, dynamic> json) {
  return UserDetails(
    json['id'] as int,
    json['student_id'] as String,
    json['full_name'] as String,
    json['email'] as String,
    json['date_of_birth'] as String,
    json['mobile'] as String,
    json['gender'] as String,
    json['address_line'] as String,
    json['city'] as String,
    json['state'] as String,
    json['pincode'] as String,
    json['updated_at'] as String,
    json['created_at'] as String,
  );
}

Map<String, dynamic> _$UserDetailsToJson(UserDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'student_id': instance.student_id,
      'full_name': instance.full_name,
      'email': instance.email,
      'date_of_birth': instance.date_of_birth,
      'mobile': instance.mobile,
      'gender': instance.gender,
      'address_line': instance.address_line,
      'city': instance.city,
      'state': instance.state,
      'pincode': instance.pincode,
      'updated_at': instance.updated_at,
      'created_at': instance.created_at,
    };
