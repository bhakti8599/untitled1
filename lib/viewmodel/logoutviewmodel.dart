
import 'package:mobx/mobx.dart';
import 'package:untitled1/data/network/models/httpreponsehandler.dart';
import 'package:untitled1/data/network/models/responce/logoutresponce.dart';
import 'package:untitled1/data/network/repository/logoutrepo.dart';
import 'package:validators/validators.dart';

part 'logoutviewmodel.g.dart';

class LogoutViewModel = _LogoutViewModel with _$LogoutViewModel;

abstract class _LogoutViewModel with Store {
  LogoutRepo? orderRepo;


  _LogoutViewModel() {
   orderRepo = LogoutRepo();
  }

  @observable
  bool isLoading = false;

  @observable
  LogOutResponse? logOutResponse;

  List<ReactionDisposer>? _disposers;


  Future<HttpResponse> getLogout() async {
    isLoading = true;

    HttpResponse httpResponse =
    await orderRepo!.getLogout();

    if (httpResponse.status == 200) {
      logOutResponse = httpResponse.data;
    }

    isLoading = false;
    return httpResponse;
  }
}

