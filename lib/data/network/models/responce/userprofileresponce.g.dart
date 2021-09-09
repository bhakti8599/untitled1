// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userprofileresponce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return UserData(
    json['name'] as String,
    json['email'] as String,
    json['mobile'] as String,
    json['role'] as String,
    json['created_at'] as String,
    json['updated_at'] as String,
    json['email_verified_at'] as String,
    json['id'] as int,
  );
}

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'mobile': instance.mobile,
      'role': instance.role,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'email_verified_at': instance.email_verified_at,
      'id': instance.id,
    };
