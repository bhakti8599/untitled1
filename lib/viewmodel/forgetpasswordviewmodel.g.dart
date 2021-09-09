// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgetpasswordviewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$ForgetPasswordViewModel on _ForgetPasswordViewModel, Store {
  final _$isLoadingAtom = Atom(name: '_ForgetPasswordViewModel.isLoading');

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

  final _$usernameAtom = Atom(name: '_ForgetPasswordViewModel.username');

  @override
  String get username {
    _$usernameAtom.reportRead();
    return super.username;
  }

  @override
  set username(String value) {
    _$usernameAtom.reportWrite(value, super.username, () {
      super.username = value;
    });
  }

  final _$passAtom = Atom(name: '_ForgetPasswordViewModel.pass');

  @override
  String get pass {
    _$passAtom.reportRead();
    return super.pass;
  }

  @override
  set pass(String value) {
    _$passAtom.reportWrite(value, super.pass, () {
      super.pass = value;
    });
  }

  final _$_ForgetPasswordViewModelActionController =
      ActionController(name: '_ForgetPasswordViewModel');

  @override
  dynamic setUsername(String value) {
    final _$actionInfo = _$_ForgetPasswordViewModelActionController.startAction(
        name: '_ForgetPasswordViewModel.setUsername');
    try {
      return super.setUsername(value);
    } finally {
      _$_ForgetPasswordViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPass(String value) {
    final _$actionInfo = _$_ForgetPasswordViewModelActionController.startAction(
        name: '_ForgetPasswordViewModel.setPass');
    try {
      return super.setPass(value);
    } finally {
      _$_ForgetPasswordViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setupValidations() {
    final _$actionInfo = _$_ForgetPasswordViewModelActionController.startAction(
        name: '_ForgetPasswordViewModel.setupValidations');
    try {
      return super.setupValidations();
    } finally {
      _$_ForgetPasswordViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void disposeValidations() {
    final _$actionInfo = _$_ForgetPasswordViewModelActionController.startAction(
        name: '_ForgetPasswordViewModel.disposeValidations');
    try {
      return super.disposeValidations();
    } finally {
      _$_ForgetPasswordViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic validateUsername(String username) {
    final _$actionInfo = _$_ForgetPasswordViewModelActionController.startAction(
        name: '_ForgetPasswordViewModel.validateUsername');
    try {
      return super.validateUsername(username);
    } finally {
      _$_ForgetPasswordViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic validatePassowrd(String pass) {
    final _$actionInfo = _$_ForgetPasswordViewModelActionController.startAction(
        name: '_ForgetPasswordViewModel.validatePassowrd');
    try {
      return super.validatePassowrd(pass);
    } finally {
      _$_ForgetPasswordViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
username: ${username},
pass: ${pass}
    ''';
  }
}

mixin _$ForgetPasswordViewModelErrorState
    on _ForgetPasswordViewModelErrorState, Store {
  Computed<bool>? _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors,
              name: '_ForgetPasswordViewModelErrorState.hasErrors'))
          .value;

  final _$usernameAtom =
      Atom(name: '_ForgetPasswordViewModelErrorState.username');

  @override
  String? get username {
    _$usernameAtom.reportRead();
    return super.username;
  }

  @override
  set username(String? value) {
    _$usernameAtom.reportWrite(value, super.username, () {
      super.username = value;
    });
  }

  final _$passAtom = Atom(name: '_ForgetPasswordViewModelErrorState.pass');

  @override
  String? get pass {
    _$passAtom.reportRead();
    return super.pass;
  }

  @override
  set pass(String? value) {
    _$passAtom.reportWrite(value, super.pass, () {
      super.pass = value;
    });
  }

  @override
  String toString() {
    return '''
username: ${username},
pass: ${pass},
hasErrors: ${hasErrors}
    ''';
  }
}
