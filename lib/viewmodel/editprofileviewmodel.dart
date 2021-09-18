import 'package:mobx/mobx.dart';
import 'package:validators/validators.dart';

import '../data/network/models/httpreponsehandler.dart';
import '../data/network/repository/editprofilerepo.dart';

part 'editprofileviewmodel.g.dart';

class EditProfileViewModel = _EditProfileViewModel with _$EditProfileViewModel;

abstract class _EditProfileViewModel with Store {
  UpdateProfileRepo? updateProfileRepo;
  EditProfileViewModelErrorState editProfileViewModelErrorState =
      EditProfileViewModelErrorState();

  _EditProfileViewModel(){
   updateProfileRepo=UpdateProfileRepo();
  }

  @observable
  bool isLoading = false;

  @observable
  String name = '';

  @observable
  String address = '';
  @observable
  String city = '';
  @observable
  String state = '';
  @observable
  String pincode = '';
  @observable
  String dob = '';
  @observable
  String gender = '';
  @observable
  String email = '';
  @observable
  String mobile = '';

  List<ReactionDisposer>? _disposers;

  @action
  setName(String value) {
    name = value;
  }

  @action
  setAddress(String value) {
    address = value;
  }

  @action
  setMobile(String value) {
    mobile = value;
  }

  @action
  setCity(String value) {
    city = value;
  }

  @action
  setState(String value) {
   state = value;
  }

  @action
  setPincode(String value) {
    pincode = value;
  }

  @action
  setDOB(String value) {
    dob = value;
  }



  @action
  setGender(String value) {
    gender = value;
  }

  @action
  setEmail(String value) {
    email = value;
  }

  @action
  void setupValidations() {
    _disposers = [
      reaction((_) => name, validateName),
      reaction((_) => mobile, validateMobile),
      // reaction((_) => pass, validatePassowrd),
      // reaction((_) => confirmpass, validateConfirmPassowrd),
    ];
  }

  @action
  void disposeValidations() {
    _disposers!.clear();
  }

  @action
  validateName(String name) {
    if (isAlpha(name)) {
      editProfileViewModelErrorState.name = null;
    } else {
      editProfileViewModelErrorState.name = 'Enter A Valid Name';
    }
  }

  @action
  validateMobile(String mobile) {
    if (isNumeric(mobile)) {
      editProfileViewModelErrorState.mobile = null;
    } else {
      editProfileViewModelErrorState.mobile = 'Enter A Valid Number';
    }
  }
  //
  // @action
  // validateAddress(String address) {
  //   if (pass.length >= 6) {
  //     signUPViewModelErrorState.pass = null;
  //   } else {
  //     signUPViewModelErrorState.pass = 'Enter At-lest 6 digits';
  //   }
  // }

//   @action
//   validateConfirmPassowrd(String confirmpass) {
//     if (confirmpass.length >= 6) {
//       signUPViewModelErrorState.confirmpass = null;
//     } else {
//       signUPViewModelErrorState.confirmpass = 'Enter At-lest 6 digits';
//     }
  // }


  Future<HttpResponse> setUpdateProfile(String full_name,String email, String dob,String mobile,String address,String city,String state,String pincode,String gender) async {
    isLoading = true;

    HttpResponse httpResponse =
    await updateProfileRepo!.updateStudent(full_name,email,mobile,dob,address,city,state,pincode,gender);
    if (httpResponse.status == 201) {
      print(httpResponse.data);
    }
    isLoading = false;
    return httpResponse;
  }


}

class EditProfileViewModelErrorState = _EditProfileViewModelErrorState
    with _$EditProfileViewModelErrorState;

abstract class _EditProfileViewModelErrorState with Store {
  @observable
  String? name;
  @observable
  String? address;
  @observable
  String? dob;
  @observable
  String? city;
  @observable
  String? state;
  @observable
  String? pincode;
  @observable
  String? gender;
  @observable
  String? email;
  @observable
  String? mobile;

  @computed
  bool get hasErrors =>
      name != null ||
      address != null ||
      mobile != null ||
      city != null ||
      gender != null ||
      email != null||
          state != null||
          dob != null||
          pincode != null;
}
