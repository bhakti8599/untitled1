import 'package:json_annotation/json_annotation.dart';
part 'assignmentresponce.g.dart';

@JsonSerializable()
class AssignmentResponse {
  final String message;
  final List<Student> student_assignments;

  AssignmentResponse(this.message, this.student_assignments);
  factory AssignmentResponse.fromJson(Map<String, dynamic> json) => _$AssignmentResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AssignmentResponseToJson(this);
}



@JsonSerializable()
class Student{


  final String student_name,course_name,email,status, attachment,  created_at, updated_at;
  final int student_id,id;



  factory Student.fromJson(Map<String, dynamic> json) => _$StudentFromJson(json);

  Student(this.student_name, this.course_name, this.email, this.status, this.attachment, this.created_at, this.updated_at, this.student_id, this.id);


  Map<String, dynamic> toJson() => _$StudentToJson(this);
}