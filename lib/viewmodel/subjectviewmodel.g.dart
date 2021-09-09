// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'subjectviewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SubjectViewModel on _SubjectViewModel, Store {
  final _$titleAtom = Atom(name: '_SubjectViewModel.title');

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

  final _$isLoadingAtom = Atom(name: '_SubjectViewModel.isLoading');

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

  final _$subjectResponseAtom = Atom(name: '_SubjectViewModel.subjectResponse');

  @override
  SubjectResponse? get subjectResponse {
    _$subjectResponseAtom.reportRead();
    return super.subjectResponse;
  }

  @override
  set subjectResponse(SubjectResponse? value) {
    _$subjectResponseAtom.reportWrite(value, super.subjectResponse, () {
      super.subjectResponse = value;
    });
  }

  final _$descAtom = Atom(name: '_SubjectViewModel.desc');

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
      AsyncAction('_SubjectViewModel.getStudentDetails');

  @override
  Future<void> getStudentDetails() {
    return _$getStudentDetailsAsyncAction.run(() => super.getStudentDetails());
  }

  @override
  String toString() {
    return '''
title: ${title},
isLoading: ${isLoading},
subjectResponse: ${subjectResponse},
desc: ${desc}
    ''';
  }
}
