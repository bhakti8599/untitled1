// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'questionpaperviewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$QuestionPaperViewModel on _QuestionPaperViewModel, Store {
  final _$titleAtom = Atom(name: '_QuestionPaperViewModel.title');

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

  final _$isLoadingAtom = Atom(name: '_QuestionPaperViewModel.isLoading');

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

  final _$questionPaperResponseAtom =
      Atom(name: '_QuestionPaperViewModel.questionPaperResponse');

  @override
  QuestionPaperResponse? get questionPaperResponse {
    _$questionPaperResponseAtom.reportRead();
    return super.questionPaperResponse;
  }

  @override
  set questionPaperResponse(QuestionPaperResponse? value) {
    _$questionPaperResponseAtom.reportWrite(value, super.questionPaperResponse,
        () {
      super.questionPaperResponse = value;
    });
  }

  final _$descAtom = Atom(name: '_QuestionPaperViewModel.desc');

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

  final _$getQuestionPaperAsyncAction =
      AsyncAction('_QuestionPaperViewModel.getQuestionPaper');

  @override
  Future<void> getQuestionPaper() {
    return _$getQuestionPaperAsyncAction.run(() => super.getQuestionPaper());
  }

  @override
  String toString() {
    return '''
title: ${title},
isLoading: ${isLoading},
questionPaperResponse: ${questionPaperResponse},
desc: ${desc}
    ''';
  }
}
