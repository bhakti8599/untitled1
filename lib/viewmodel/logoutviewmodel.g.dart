// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logoutviewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$LogoutViewModel on _LogoutViewModel, Store {
  final _$isLoadingAtom = Atom(name: '_LogoutViewModel.isLoading');

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

  final _$logOutResponseAtom = Atom(name: '_LogoutViewModel.logOutResponse');

  @override
  LogOutResponse? get logOutResponse {
    _$logOutResponseAtom.reportRead();
    return super.logOutResponse;
  }

  @override
  set logOutResponse(LogOutResponse? value) {
    _$logOutResponseAtom.reportWrite(value, super.logOutResponse, () {
      super.logOutResponse = value;
    });
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
logOutResponse: ${logOutResponse}
    ''';
  }
}
