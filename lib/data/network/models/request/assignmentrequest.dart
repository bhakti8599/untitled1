

import 'package:json_annotation/json_annotation.dart';
part 'assignmentrequest.g.dart';

@JsonSerializable()
class AssignmentRequestModel {

  final String? student_id;

  factory AssignmentRequestModel.fromJson(Map<String, dynamic> json) =>
      _$AssignmentRequestModelFromJson(json);

  AssignmentRequestModel(this.student_id);
  Map<String, dynamic> toJson() => _$AssignmentRequestModelToJson(this);

  String getString() {
    return '?student_id=$student_id';
  }
}
