// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'userprofileviewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserProfileViewModel on _UserProfileViewModel, Store {
  final _$titleAtom = Atom(name: '_UserProfileViewModel.title');

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

  final _$isLoadingAtom = Atom(name: '_UserProfileViewModel.isLoading');

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

  final _$userDataAtom = Atom(name: '_UserProfileViewModel.userData');

  @override
  UserData? get userData {
    _$userDataAtom.reportRead();
    return super.userData;
  }

  @override
  set userData(UserData? value) {
    _$userDataAtom.reportWrite(value, super.userData, () {
      super.userData = value;
    });
  }

  final _$descAtom = Atom(name: '_UserProfileViewModel.desc');

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

  final _$getUserProfileAsyncAction =
      AsyncAction('_UserProfileViewModel.getUserProfile');

  @override
  Future<void> getUserProfile() {
    return _$getUserProfileAsyncAction.run(() => super.getUserProfile());
  }

  @override
  String toString() {
    return '''
title: ${title},
isLoading: ${isLoading},
userData: ${userData},
desc: ${desc}
    ''';
  }
}
