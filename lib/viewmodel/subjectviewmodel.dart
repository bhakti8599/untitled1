

import 'package:mobx/mobx.dart';
import 'package:untitled1/data/local/client/localprefsmodel.dart';
import 'package:untitled1/data/network/models/httpreponsehandler.dart';
import 'package:untitled1/data/network/models/request/subjectrequest.dart';
import 'package:untitled1/data/network/models/responce/subjectresponce.dart';
import 'package:untitled1/data/network/repository/subjectrepo.dart';
import '../main.dart';

part 'subjectviewmodel.g.dart';

class SubjectViewModel = _SubjectViewModel with _$SubjectViewModel;

abstract class _SubjectViewModel with Store {
  SubjectRepo? subjectRepo;
  _SubjectViewModel() {
   subjectRepo =SubjectRepo();
  }

  @observable
  String title = '';

  @observable
  bool isLoading = true;
  @observable
  SubjectResponse? subjectResponse;
  @observable
  String desc = '';

  @action
  Future<void> getStudentDetails() async {
    isLoading = true;
    HttpResponse httpResponse = await subjectRepo!.getSubject(SubjectRequestModel(globalSharePrefs!.getString(StudentId)));

    {
      if (httpResponse.status == 200) {
        subjectResponse = httpResponse.data;
      }
    }
    isLoading = false;
  }
}
