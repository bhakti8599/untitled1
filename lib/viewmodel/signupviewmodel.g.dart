// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signupviewmodel.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SignUPViewModel on _SignUPViewModel, Store {
  final _$isLoadingAtom = Atom(name: '_SignUPViewModel.isLoading');

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

  final _$registerResponseAtom =
      Atom(name: '_SignUPViewModel.registerResponse');

  @override
  RegisterResponse? get registerResponse {
    _$registerResponseAtom.reportRead();
    return super.registerResponse;
  }

  @override
  set registerResponse(RegisterResponse? value) {
    _$registerResponseAtom.reportWrite(value, super.registerResponse, () {
      super.registerResponse = value;
    });
  }

  final _$nameAtom = Atom(name: '_SignUPViewModel.name');

  @override
  String get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$emailAtom = Atom(name: '_SignUPViewModel.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$passAtom = Atom(name: '_SignUPViewModel.pass');

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

  final _$confirmpassAtom = Atom(name: '_SignUPViewModel.confirmpass');

  @override
  String get confirmpass {
    _$confirmpassAtom.reportRead();
    return super.confirmpass;
  }

  @override
  set confirmpass(String value) {
    _$confirmpassAtom.reportWrite(value, super.confirmpass, () {
      super.confirmpass = value;
    });
  }

  final _$mobileAtom = Atom(name: '_SignUPViewModel.mobile');

  @override
  String get mobile {
    _$mobileAtom.reportRead();
    return super.mobile;
  }

  @override
  set mobile(String value) {
    _$mobileAtom.reportWrite(value, super.mobile, () {
      super.mobile = value;
    });
  }

  final _$_SignUPViewModelActionController =
      ActionController(name: '_SignUPViewModel');

  @override
  dynamic setName(String value) {
    final _$actionInfo = _$_SignUPViewModelActionController.startAction(
        name: '_SignUPViewModel.setName');
    try {
      return super.setName(value);
    } finally {
      _$_SignUPViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setEmail(String value) {
    final _$actionInfo = _$_SignUPViewModelActionController.startAction(
        name: '_SignUPViewModel.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_SignUPViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setMobile(String value) {
    final _$actionInfo = _$_SignUPViewModelActionController.startAction(
        name: '_SignUPViewModel.setMobile');
    try {
      return super.setMobile(value);
    } finally {
      _$_SignUPViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPass(String value) {
    final _$actionInfo = _$_SignUPViewModelActionController.startAction(
        name: '_SignUPViewModel.setPass');
    try {
      return super.setPass(value);
    } finally {
      _$_SignUPViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setconfirmpass(String value) {
    final _$actionInfo = _$_SignUPViewModelActionController.startAction(
        name: '_SignUPViewModel.setconfirmpass');
    try {
      return super.setconfirmpass(value);
    } finally {
      _$_SignUPViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setupValidations() {
    final _$actionInfo = _$_SignUPViewModelActionController.startAction(
        name: '_SignUPViewModel.setupValidations');
    try {
      return super.setupValidations();
    } finally {
      _$_SignUPViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  void disposeValidations() {
    final _$actionInfo = _$_SignUPViewModelActionController.startAction(
        name: '_SignUPViewModel.disposeValidations');
    try {
      return super.disposeValidations();
    } finally {
      _$_SignUPViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic validateName(String name) {
    final _$actionInfo = _$_SignUPViewModelActionController.startAction(
        name: '_SignUPViewModel.validateName');
    try {
      return super.validateName(name);
    } finally {
      _$_SignUPViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic validateEmail(String email) {
    final _$actionInfo = _$_SignUPViewModelActionController.startAction(
        name: '_SignUPViewModel.validateEmail');
    try {
      return super.validateEmail(email);
    } finally {
      _$_SignUPViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic validateMobile(String mobile) {
    final _$actionInfo = _$_SignUPViewModelActionController.startAction(
        name: '_SignUPViewModel.validateMobile');
    try {
      return super.validateMobile(mobile);
    } finally {
      _$_SignUPViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic validatePassowrd(String pass) {
    final _$actionInfo = _$_SignUPViewModelActionController.startAction(
        name: '_SignUPViewModel.validatePassowrd');
    try {
      return super.validatePassowrd(pass);
    } finally {
      _$_SignUPViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic validateConfirmPassowrd(String confirmpass) {
    final _$actionInfo = _$_SignUPViewModelActionController.startAction(
        name: '_SignUPViewModel.validateConfirmPassowrd');
    try {
      return super.validateConfirmPassowrd(confirmpass);
    } finally {
      _$_SignUPViewModelActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
registerResponse: ${registerResponse},
name: ${name},
email: ${email},
pass: ${pass},
confirmpass: ${confirmpass},
mobile: ${mobile}
    ''';
  }
}

mixin _$SignUPViewModelErrorState on _SignUPViewModelErrorState, Store {
  Computed<bool>? _$hasErrorsComputed;

  @override
  bool get hasErrors =>
      (_$hasErrorsComputed ??= Computed<bool>(() => super.hasErrors,
              name: '_SignUPViewModelErrorState.hasErrors'))
          .value;

  final _$nameAtom = Atom(name: '_SignUPViewModelErrorState.name');

  @override
  String? get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(String? value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$emailAtom = Atom(name: '_SignUPViewModelErrorState.email');

  @override
  String? get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String? value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$mobileAtom = Atom(name: '_SignUPViewModelErrorState.mobile');

  @override
  String? get mobile {
    _$mobileAtom.reportRead();
    return super.mobile;
  }

  @override
  set mobile(String? value) {
    _$mobileAtom.reportWrite(value, super.mobile, () {
      super.mobile = value;
    });
  }

  final _$passAtom = Atom(name: '_SignUPViewModelErrorState.pass');

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

  final _$confirmpassAtom =
      Atom(name: '_SignUPViewModelErrorState.confirmpass');

  @override
  String? get confirmpass {
    _$confirmpassAtom.reportRead();
    return super.confirmpass;
  }

  @override
  set confirmpass(String? value) {
    _$confirmpassAtom.reportWrite(value, super.confirmpass, () {
      super.confirmpass = value;
    });
  }

  @override
  String toString() {
    return '''
name: ${name},
email: ${email},
mobile: ${mobile},
pass: ${pass},
confirmpass: ${confirmpass},
hasErrors: ${hasErrors}
    ''';
  }
}
