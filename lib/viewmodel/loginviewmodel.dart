import 'package:mobx/mobx.dart';
import 'package:untitled1/data/network/models/httpreponsehandler.dart';
import 'package:untitled1/data/network/models/request/loginrequest.dart';
import 'package:untitled1/data/network/models/responce/loginrespose.dart';
import 'package:untitled1/data/network/repository/loginrepo.dart';
import 'package:validators/validators.dart';
part 'loginviewmodel.g.dart';

class LoginViewModel = _LoginViewModel with _$LoginViewModel;

abstract class _LoginViewModel with Store {
  LoginRepo? orderRepo;
  LoginViewModelErrorState loginViewModelErrorState =
      LoginViewModelErrorState();

  _LoginViewModel() {
  orderRepo = LoginRepo();
  }

  @observable
  bool isLoading = false;

  @observable
  LoginResponse? loginResponse;

  @observable
  String username = '';

  @observable
  String pass = '';

  List<ReactionDisposer>? _disposers;

  @action
  setUsername(String value) {
    username = value;
  }

  @action
  setPass(String value) {
    pass = value;
  }

  @action
  void setupValidations() {
    _disposers = [
      reaction((_) => username, validateUsername),
      reaction((_) => pass, validatePassowrd),
    ];
  }

  @action
  void disposeValidations() {
    _disposers!.clear();
  }

  @action
  validateUsername(String username) {
    if (isEmail(username)) {
      loginViewModelErrorState.username = null;
    } else {
      loginViewModelErrorState.username = 'Enter A Valid Mail';
    }
  }

  @action
  validatePassowrd(String pass) {
    if (pass.length >= 6) {
      loginViewModelErrorState.pass = null;
    } else {
      loginViewModelErrorState.pass = 'Enter At-lest 6 digits';
    }
  }

  Future<HttpResponse> getLogin(String username, String pass) async {
    isLoading = true;

    HttpResponse httpResponse =
        await orderRepo!.login(LoginRequestModel(username, pass));

    if (httpResponse.status == 200) {
      loginResponse = httpResponse.data;
    }

    isLoading = false;
    return httpResponse;
  }
}

class LoginViewModelErrorState = _LoginViewModelErrorState
    with _$LoginViewModelErrorState;

abstract class _LoginViewModelErrorState with Store {
  @observable
  String? username;

  @observable
  String? pass;

  @computed
  bool get hasErrors => username != null || pass != null;
}
