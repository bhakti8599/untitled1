// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questionpaperresponce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QuestionPaperResponse _$QuestionPaperResponseFromJson(
    Map<String, dynamic> json) {
  return QuestionPaperResponse(
    json['message'] as String,
    (json['question_papers'] as List<dynamic>)
        .map((e) => QuestionPaper.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$QuestionPaperResponseToJson(
        QuestionPaperResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'question_papers': instance.question_papers,
    };

QuestionPaper _$QuestionPaperFromJson(Map<String, dynamic> json) {
  return QuestionPaper(
    json['course_name'] as String,
    json['paper_title'] as String,
    json['paper_description'] as String,
    json['time'] as String,
    json['paper_path'] as String,
    json['sample_answer_path'] as String,
    json['created_at'] as String,
    json['updated_at'] as String,
    json['id'] as int,
    json['plan_id'] as int,
    json['marks'] as int,
  );
}

Map<String, dynamic> _$QuestionPaperToJson(QuestionPaper instance) =>
    <String, dynamic>{
      'course_name': instance.course_name,
      'paper_title': instance.paper_title,
      'paper_description': instance.paper_description,
      'time': instance.time,
      'paper_path': instance.paper_path,
      'sample_answer_path': instance.sample_answer_path,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'id': instance.id,
      'plan_id': instance.plan_id,
      'marks': instance.marks,
    };
