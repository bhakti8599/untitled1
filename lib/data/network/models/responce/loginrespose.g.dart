// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loginrespose.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) {
  return LoginResponse(
    User.fromJson(json['user'] as Map<String, dynamic>),
    json['access_token'] as String,
    json['token_type'] as String,
    json['expires_in'] as int,
    json['success'] as bool,
  );
}

Map<String, dynamic> _$LoginResponseToJson(LoginResponse instance) =>
    <String, dynamic>{
      'user': instance.user,
      'access_token': instance.access_token,
      'token_type': instance.token_type,
      'expires_in': instance.expires_in,
      'success': instance.success,
    };

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    json['name'] as String,
    json['email'] as String,
    json['mobile'] as String,
    json['role'] as String,
    json['created_at'] as String,
    json['updated_at'] as String,
    json['email_verified_at'] as String,
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
      'email_verified_at': instance.email_verified_at,
      '_id': instance.id,
    };
