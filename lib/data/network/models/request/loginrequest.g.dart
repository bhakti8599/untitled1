// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'loginrequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginRequestModel _$LoginRequestModelFromJson(Map<String, dynamic> json) {
  return LoginRequestModel(
    json['username'] as String,
    json['password'] as String,
  );
}

Map<String, dynamic> _$LoginRequestModelToJson(LoginRequestModel instance) =>
    <String, dynamic>{
      'username': instance.username,
      'password': instance.password,
    };
