import 'package:mobx/mobx.dart';
import 'package:validators/validators.dart';
part 'forgetpasswordviewmodel.g.dart';

class ForgetPasswordViewModel = _ForgetPasswordViewModel with _$ForgetPasswordViewModel;

abstract class _ForgetPasswordViewModel with Store {
 // LoginRepo? orderRepo;
  ForgetPasswordViewModelErrorState forgetViewModelErrorState =
  ForgetPasswordViewModelErrorState();

  _ForgetPasswordViewModel() {
    //orderRepo = LoginRepo();
  }

  @observable
  bool isLoading = false;

  // @observable
  // LoginResponse? loginResponse;

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
      forgetViewModelErrorState.username = null;
    } else {
      forgetViewModelErrorState.username = 'Enter A Valid Mail';
    }
  }

  @action
  validatePassowrd(String pass) {
    if (pass.length >= 6) {
      forgetViewModelErrorState.pass = null;
    } else {
      forgetViewModelErrorState.pass = 'Enter At-lest 6 digits';
    }
  }

  // Future<HttpResponse> getLogin(String username, String pass) async {
  //   isLoading = true;
  //   //
  //   // HttpResponse httpResponse =
  //   // await orderRepo!.login(LoginRequestModel(username, pass));
  //   //
  //   // if (httpResponse.status == 200) {
  //   //   loginResponse = httpResponse.data;
  //   // }
  //
  //   // isLoading = false;
  //   // return httpResponse;
  // }
}

class ForgetPasswordViewModelErrorState = _ForgetPasswordViewModelErrorState
    with _$ForgetPasswordViewModelErrorState;

abstract class _ForgetPasswordViewModelErrorState with Store {
  @observable
  String? username;

  @observable
  String? pass;

  @computed
  bool get hasErrors => username != null || pass != null;
}
