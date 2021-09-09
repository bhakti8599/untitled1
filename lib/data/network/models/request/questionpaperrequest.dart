

import 'package:json_annotation/json_annotation.dart';
part 'questionpaperrequest.g.dart';

@JsonSerializable()
class QuestionPaperRequestModel {

  final String? student_id;

  factory QuestionPaperRequestModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionPaperRequestModelFromJson(json);

  QuestionPaperRequestModel(this.student_id);
  Map<String, dynamic> toJson() => _$QuestionPaperRequestModelToJson(this);

  String getString() {
    return '?student_id=$student_id';
  }
}
