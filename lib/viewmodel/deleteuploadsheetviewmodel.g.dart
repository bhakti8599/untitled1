// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deleteuploadsheetviewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$DeleteAssignmentViewModel on _DeleteAssignmentViewModel, Store {
  final _$titleAtom = Atom(name: '_DeleteAssignmentViewModel.title');

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

  final _$isLoadingAtom = Atom(name: '_DeleteAssignmentViewModel.isLoading');

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

  final _$assignmentResponseAtom =
      Atom(name: '_DeleteAssignmentViewModel.assignmentResponse');

  @override
  AssignmentResponse? get assignmentResponse {
    _$assignmentResponseAtom.reportRead();
    return super.assignmentResponse;
  }

  @override
  set assignmentResponse(AssignmentResponse? value) {
    _$assignmentResponseAtom.reportWrite(value, super.assignmentResponse, () {
      super.assignmentResponse = value;
    });
  }

  final _$descAtom = Atom(name: '_DeleteAssignmentViewModel.desc');

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

  final _$getAssignmentAsyncAction =
      AsyncAction('_DeleteAssignmentViewModel.getAssignment');

  @override
  Future<void> getAssignment() {
    return _$getAssignmentAsyncAction.run(() => super.getAssignment());
  }

  @override
  String toString() {
    return '''
title: ${title},
isLoading: ${isLoading},
assignmentResponse: ${assignmentResponse},
desc: ${desc}
    ''';
  }
}
