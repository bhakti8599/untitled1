// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subjectresponce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SubjectResponse _$SubjectResponseFromJson(Map<String, dynamic> json) {
  return SubjectResponse(
    json['message'] as String,
    (json['subject'] as List<dynamic>).map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$SubjectResponseToJson(SubjectResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'subject': instance.subject,
    };
