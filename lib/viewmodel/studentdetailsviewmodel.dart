import 'dart:convert';
import 'package:mobx/mobx.dart';
import 'package:untitled1/data/local/client/localprefsmodel.dart';
import 'package:untitled1/data/network/models/httpreponsehandler.dart';
import 'package:untitled1/data/network/repository/studentdetailsrepo.dart';
import 'package:untitled1/data/network/models/request/studentdetailsrequest.dart';
import 'package:untitled1/data/network/models/responce/studentdetailsresponce.dart';
import '../main.dart';

part 'studentdetailsviewmodel.g.dart';

class StudentDetailsViewModel = _StudentDetailsViewModel with _$StudentDetailsViewModel;

abstract class _StudentDetailsViewModel with Store {
 StudentDetailsRepo? studentDetailsRepo;
  _StudentDetailsViewModel() {
   studentDetailsRepo =StudentDetailsRepo();
  }

  @observable
  String title = '';

  @observable
  bool isLoading = true;
@observable
StudentDetailsResponse? studentDetailsResponse;
  @observable
  String desc = '';

  @action
  Future<void> getStudentDetails() async {
    isLoading = true;
    HttpResponse httpResponse = await studentDetailsRepo!.getStudentDetails(StudentDetailsRequestModel(globalSharePrefs!.getString(StudentId)));

    {
      if (httpResponse.status == 200) {
        studentDetailsRepo = httpResponse.data;
      }
    }
    isLoading = false;
  }
}
