// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registerrequest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterRequestModel _$RegisterRequestModelFromJson(Map<String, dynamic> json) {
  return RegisterRequestModel(
    json['mobile'] as String,
    json['password'] as String,
    json['name'] as String,
    json['email'] as String,
  );
}

Map<String, dynamic> _$RegisterRequestModelToJson(
        RegisterRequestModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'mobile': instance.mobile,
      'password': instance.password,
      'email': instance.email,
    };
