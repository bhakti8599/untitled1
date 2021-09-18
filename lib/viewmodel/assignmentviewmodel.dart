


import 'package:mobx/mobx.dart';

import '../data/network/models/httpreponsehandler.dart';
import '../data/network/models/responce/assignmentresponce.dart';
import '../data/network/repository/assignmentrepo.dart';
import '../main.dart';

part 'assignmentviewmodel.g.dart';

class AssignmentViewModel = _AssignmentViewModel with _$AssignmentViewModel;

abstract class _AssignmentViewModel with Store {
  AssignmentRepo? assignmentRepo;
  _AssignmentViewModel() {
   assignmentRepo =AssignmentRepo();
  }

  @observable
  String title = '';

  @observable
  bool isLoading = true;

  @observable
  AssignmentResponse? assignmentResponse;

  @observable
  String desc = '';

  @action
  Future<void> getAssignment() async {
    isLoading = true;
    HttpResponse httpResponse = await assignmentRepo!.getAssignments(AssignmentRequestModel(globalSharePrefs!.getString(StudentId)));

    {
      if (httpResponse.status == 200) {
        assignmentResponse = httpResponse.data;
      }
    }
    isLoading = false;
  }
}
