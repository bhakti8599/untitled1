
import 'package:json_annotation/json_annotation.dart';
part 'subjectrequest.g.dart';


@JsonSerializable()
class SubjectRequestModel {

  final String? student_id;

  factory SubjectRequestModel.fromJson(Map<String, dynamic> json) =>
      _$SubjectRequestModelFromJson(json);

  SubjectRequestModel(this.student_id);
  Map<String, dynamic> toJson() => _$SubjectRequestModelToJson(this);

  String getString() {
    return '?student_id=$student_id';
  }
}
