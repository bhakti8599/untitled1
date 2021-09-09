import 'package:mobx/mobx.dart';
import 'package:untitled1/data/network/models/httpreponsehandler.dart';
import 'package:untitled1/data/network/models/responce/registerresponce.dart';
import 'package:untitled1/data/network/repository/signuprepo.dart';

import 'package:validators/validators.dart';

part 'signupviewmodel.g.dart';

class SignUPViewModel = _SignUPViewModel with _$SignUPViewModel;

abstract class _SignUPViewModel with Store {
  SignUpRepo? orderRepo;
  SignUPViewModelErrorState signUPViewModelErrorState =
      SignUPViewModelErrorState();

  _SignUPViewModel() {
   orderRepo = SignUpRepo();
  }

  @observable
  bool isLoading = false;


  @observable
  RegisterResponse? registerResponse;

  @observable
  String name = '';
  @observable
  String email = '';

  @observable
  String pass = '';
  @observable
  String confirmpass = '';
  @observable
  String mobile = '';

  List<ReactionDisposer>? _disposers;

  @action
  setName(String value) {
    name = value;
  }

  @action
  setEmail(String value) {
    email = value;
  }

  @action
  setMobile(String value) {
    mobile = value;
  }

  @action
  setPass(String value) {
    pass = value;
  }

  @action
  setconfirmpass(String value) {
    confirmpass = value;
  }

  @action
  void setupValidations() {
    _disposers = [
      reaction((_) => name, validateName),
      reaction((_) => email, validateEmail),
      reaction((_) => mobile, validateMobile),
      reaction((_) => pass, validatePassowrd),
      reaction((_) => confirmpass, validateConfirmPassowrd),
    ];
  }

  @action
  void disposeValidations() {
    _disposers!.clear();
  }

  @action
  validateName(String name) {
    if (isAlpha(name)) {
      signUPViewModelErrorState.name = null;
    } else {
      signUPViewModelErrorState.name = 'Enter A Valid Name';
    }
  }

  @action
  validateEmail(String email) {
    if (isEmail(email)) {
      signUPViewModelErrorState.email = null;
    } else {
      signUPViewModelErrorState.email = 'Enter A Valid email';
    }
  }

  @action
  validateMobile(String mobile) {
    if (isNumeric(mobile)) {
      signUPViewModelErrorState.mobile = null;
    } else {
      signUPViewModelErrorState.mobile = 'Enter A Valid Number';
    }
  }

  @action
  validatePassowrd(String pass) {
    if (pass.length >= 6) {
      signUPViewModelErrorState.pass = null;
    } else {
      signUPViewModelErrorState.pass = 'Enter At-lest 6 digits';
    }
  }

  @action
  validateConfirmPassowrd(String confirmpass) {
    if (confirmpass.length >= 6) {
      signUPViewModelErrorState.confirmpass = null;
    } else {
      signUPViewModelErrorState.confirmpass = 'Enter At-lest 6 digits';
    }
  }

  Future<HttpResponse> setStudent(
    String name,
    String password,
    String mobile,
    String email,
  ) async {
    isLoading = true;

    HttpResponse httpResponse =
        await orderRepo!.student(name, password, mobile, email);
    if (httpResponse.status == 200) {
     registerResponse = httpResponse.data;
    }
    isLoading = false;
    return httpResponse;
  }
}

class SignUPViewModelErrorState = _SignUPViewModelErrorState
    with _$SignUPViewModelErrorState;

abstract class _SignUPViewModelErrorState with Store {
  @observable
  String? name;
  @observable
  String? email;
  @observable
  String? mobile;
  @observable
  String? pass;
  @observable
  String? confirmpass;

  @computed
  bool get hasErrors =>
      name != null ||
      email != null ||
      pass != null ||
      mobile != null ||
      confirmpass != null;
}
