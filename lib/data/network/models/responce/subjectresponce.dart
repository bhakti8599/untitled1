import 'package:json_annotation/json_annotation.dart';
part 'subjectresponce.g.dart';

@JsonSerializable()
class SubjectResponse {
 final String message;
 final List<String> subject;

  SubjectResponse(this.message, this.subject);
 factory SubjectResponse.fromJson(Map<String, dynamic> json) =>
     _$SubjectResponseFromJson(json);
 Map<String, dynamic> toJson() => _$SubjectResponseToJson(this);
}