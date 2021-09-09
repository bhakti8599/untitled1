// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assignmentresponce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AssignmentResponse _$AssignmentResponseFromJson(Map<String, dynamic> json) {
  return AssignmentResponse(
    json['message'] as String,
    (json['student_assignments'] as List<dynamic>)
        .map((e) => Student.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$AssignmentResponseToJson(AssignmentResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'student_assignments': instance.student_assignments,
    };

Student _$StudentFromJson(Map<String, dynamic> json) {
  return Student(
    json['student_name'] as String,
    json['course_name'] as String,
    json['email'] as String,
    json['status'] as String,
    json['attachment'] as String,
    json['created_at'] as String,
    json['updated_at'] as String,
    json['student_id'] as int,
    json['id'] as int,
  );
}

Map<String, dynamic> _$StudentToJson(Student instance) => <String, dynamic>{
      'student_name': instance.student_name,
      'course_name': instance.course_name,
      'email': instance.email,
      'status': instance.status,
      'attachment': instance.attachment,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'student_id': instance.student_id,
      'id': instance.id,
    };
