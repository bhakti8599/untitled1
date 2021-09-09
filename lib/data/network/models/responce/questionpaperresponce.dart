import 'package:json_annotation/json_annotation.dart';
part 'questionpaperresponce.g.dart';

@JsonSerializable()
class QuestionPaperResponse {
  final String message;
  final List<QuestionPaper> question_papers;

  QuestionPaperResponse(this.message, this.question_papers);
  factory QuestionPaperResponse.fromJson(Map<String, dynamic> json) => _$QuestionPaperResponseFromJson(json);
  Map<String, dynamic> toJson() => _$QuestionPaperResponseToJson(this);
}



@JsonSerializable()
class QuestionPaper {


  final String  course_name,paper_title,paper_description,time,paper_path,sample_answer_path  , created_at,
      updated_at;
  final int  id,plan_id,marks;


  factory QuestionPaper.fromJson(Map<String, dynamic> json) =>
      _$QuestionPaperFromJson(json);

  QuestionPaper(this.course_name, this.paper_title, this.paper_description, this.time, this.paper_path, this.sample_answer_path, this.created_at, this.updated_at, this.id, this.plan_id, this.marks);




  Map<String, dynamic> toJson() => _$QuestionPaperToJson(this);
}