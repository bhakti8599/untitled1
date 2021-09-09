// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'studentdetailsresponce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StudentDetailsResponse _$StudentDetailsResponseFromJson(
    Map<String, dynamic> json) {
  return StudentDetailsResponse(
    json['message'] as String,
    User.fromJson(json['user_details'] as Map<String, dynamic>),
    (json['subjects'] as List<dynamic>)
        .map((e) => Subject.fromJson(e as Map<String, dynamic>))
        .toList(),
    PaymentDetails.fromJson(json['payment_details'] as Map<String, dynamic>),
    (json['student_assignments'] as List<dynamic>)
        .map((e) => StudentAssignment.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$StudentDetailsResponseToJson(
        StudentDetailsResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user_details': instance.user_details,
      'subjects': instance.subjects,
      'payment_details': instance.payment_details,
      'student_assignments': instance.student_assignments,
    };

Subject _$SubjectFromJson(Map<String, dynamic> json) {
  return Subject(
    json['subject'] as String,
  );
}

Map<String, dynamic> _$SubjectToJson(Subject instance) => <String, dynamic>{
      'subject': instance.subject,
    };

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    json['name'] as String,
    json['email'] as String,
    json['mobile'] as String,
    json['role'] as String,
    json['created_at'] as String,
    json['updated_at'] as String,
    json['email_verified_at'] as String,
    json['id'] as int,
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
      'mobile': instance.mobile,
      'role': instance.role,
      'created_at': instance.created_at,
      'updated_at': instance.updated_at,
      'email_verified_at': instance.email_verified_at,
      'id': instance.id,
    };

PaymentDetails _$PaymentDetailsFromJson(Map<String, dynamic> json) {
  return PaymentDetails(
    json['id'] as int,
    json['user_id'] as int,
    json['plan_id'] as int,
    json['amount'] as int,
    json['plan_name'] as String,
    json['plan_group'] as String,
    json['sub_group'] as String,
    json['plan_validity'] as String,
    json['status'] as String,
    json['updated_at'] as String,
    json['created_at'] as String,
  );
}

Map<String, dynamic> _$PaymentDetailsToJson(PaymentDetails instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.user_id,
      'plan_id': instance.plan_id,
      'amount': instance.amount,
      'plan_name': instance.plan_name,
      'plan_group': instance.plan_group,
      'sub_group': instance.sub_group,
      'plan_validity': instance.plan_validity,
      'status': instance.status,
      'updated_at': instance.updated_at,
      'created_at': instance.created_at,
    };

StudentAssignment _$StudentAssignmentFromJson(Map<String, dynamic> json) {
  return StudentAssignment(
    json['name'] as String,
  );
}

Map<String, dynamic> _$StudentAssignmentToJson(StudentAssignment instance) =>
    <String, dynamic>{
      'name': instance.name,
    };
