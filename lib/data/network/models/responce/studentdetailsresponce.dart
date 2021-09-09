import 'package:json_annotation/json_annotation.dart';
part 'studentdetailsresponce.g.dart';

@JsonSerializable()
class StudentDetailsResponse {
  final String message;
  final User user_details;
  final List<Subject> subjects;
  final PaymentDetails payment_details;
final List<StudentAssignment>  student_assignments;

  factory StudentDetailsResponse.fromJson(Map<String, dynamic> json) => _$StudentDetailsResponseFromJson(json);

  StudentDetailsResponse(this.message, this.user_details, this.subjects, this.payment_details, this.student_assignments);
  Map<String, dynamic> toJson() => _$StudentDetailsResponseToJson(this);
}

@JsonSerializable()
class Subject {
  final String subject;

  Subject(this.subject);
  factory Subject.fromJson(Map<String, dynamic> json) => _$SubjectFromJson(json);
  Map<String, dynamic> toJson() => _$SubjectToJson(this);

}


@JsonSerializable()
class User {
  final String name,email, mobile, role,  created_at, updated_at,email_verified_at;

  final int id;


  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  User(this.name, this.email, this.mobile, this.role, this.created_at, this.updated_at, this.email_verified_at, this.id);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
@JsonSerializable()
class PaymentDetails {

  final int id,user_id,plan_id,amount;
  final String  plan_name,plan_group,sub_group,plan_validity,status,updated_at,created_at;

  PaymentDetails(this.id, this.user_id, this.plan_id, this.amount, this.plan_name, this.plan_group, this.sub_group, this.plan_validity, this.status, this.updated_at, this.created_at);
  factory PaymentDetails.fromJson(Map<String, dynamic> json) => _$PaymentDetailsFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentDetailsToJson(this);
}


@JsonSerializable()
class StudentAssignment {
  final String name;

  StudentAssignment(this.name);

  factory StudentAssignment.fromJson(Map<String, dynamic> json) =>
      _$StudentAssignmentFromJson(json);

  Map<String, dynamic> toJson() => _$StudentAssignmentToJson(this);
}
