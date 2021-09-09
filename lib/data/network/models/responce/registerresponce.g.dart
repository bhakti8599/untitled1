// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registerresponce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterResponse _$RegisterResponseFromJson(Map<String, dynamic> json) {
  return RegisterResponse(
    json['message'] as String,
    User.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RegisterResponseToJson(RegisterResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user': instance.user,
    };

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    json['name'] as String,
    json['email'] as String,
    json['mobile'] as String,
    json['role'] as String,
    json['created_at'] as String,
    json['updated_at'] as String,
    json['_id'] as String,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'mobile': instance.mobile,
      'role': instance.role,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      '_id': instance.id,
    };
