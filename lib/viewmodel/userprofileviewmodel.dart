import 'package:mobx/mobx.dart';
import 'package:untitled1/data/network/models/httpreponsehandler.dart';
import 'package:untitled1/data/network/models/responce/userprofileresponce.dart';
import 'package:untitled1/data/network/repository/userprofilerepo.dart';
part 'userprofileviewmodel.g.dart';

class UserProfileViewModel = _UserProfileViewModel with _$UserProfileViewModel;

abstract class _UserProfileViewModel with Store {
 UserProfileRepo? userProfileRepo;
  _UserProfileViewModel() {
   userProfileRepo = UserProfileRepo();
  }

  @observable
  String title = '';

  @observable
  bool isLoading = true;

 @observable
 UserData? userData;

  @observable
  String desc = '';

  @action
  Future<void> getUserProfile() async {
    isLoading = true;
    HttpResponse httpResponse = await userProfileRepo!.getUserProfile();

    {
      if (httpResponse.status == 200) {
        userData = httpResponse.data;
      }
    }
    isLoading = false;
  }
}
