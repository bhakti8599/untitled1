// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'studentdetailsviewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$StudentDetailsViewModel on _StudentDetailsViewModel, Store {
  final _$titleAtom = Atom(name: '_StudentDetailsViewModel.title');

  @override
  String get title {
    _$titleAtom.reportRead();
    return super.title;
  }

  @override
  set title(String value) {
    _$titleAtom.reportWrite(value, super.title, () {
      super.title = value;
    });
  }

  final _$isLoadingAtom = Atom(name: '_StudentDetailsViewModel.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$studentDetailsResponseAtom =
      Atom(name: '_StudentDetailsViewModel.studentDetailsResponse');

  @override
  StudentDetailsResponse? get studentDetailsResponse {
    _$studentDetailsResponseAtom.reportRead();
    return super.studentDetailsResponse;
  }

  @override
  set studentDetailsResponse(StudentDetailsResponse? value) {
    _$studentDetailsResponseAtom
        .reportWrite(value, super.studentDetailsResponse, () {
      super.studentDetailsResponse = value;
    });
  }

  final _$descAtom = Atom(name: '_StudentDetailsViewModel.desc');

  @override
  String get desc {
    _$descAtom.reportRead();
    return super.desc;
  }

  @override
  set desc(String value) {
    _$descAtom.reportWrite(value, super.desc, () {
      super.desc = value;
    });
  }

  final _$getStudentDetailsAsyncAction =
      AsyncAction('_StudentDetailsViewModel.getStudentDetails');

  @override
  Future<void> getStudentDetails() {
    return _$getStudentDetailsAsyncAction.run(() => super.getStudentDetails());
  }

  @override
  String toString() {
    return '''
title: ${title},
isLoading: ${isLoading},
studentDetailsResponse: ${studentDetailsResponse},
desc: ${desc}
    ''';
  }
}
