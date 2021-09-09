
import 'package:json_annotation/json_annotation.dart';
part 'studentdetailsrequest.g.dart';

@JsonSerializable()
class StudentDetailsRequestModel {

  final String? student_id;

  factory StudentDetailsRequestModel.fromJson(Map<String, dynamic> json) =>
      _$StudentDetailsRequestModelFromJson(json);

  StudentDetailsRequestModel(this.student_id);
  Map<String, dynamic> toJson() => _$StudentDetailsRequestModelToJson(this);

  String getString() {
    return '?student_id=$student_id';
  }
}
