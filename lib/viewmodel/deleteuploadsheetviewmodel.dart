
import 'package:mobx/mobx.dart';


import '../data/network/models/httpreponsehandler.dart';
import '../data/network/models/responce/assignmentresponce.dart';
import '../data/network/repository/assignmentrepo.dart';
import '../main.dart';

part 'deleteuploadsheetviewmodel.g.dart';

class DeleteAssignmentViewModel = _DeleteAssignmentViewModel with _$DeleteAssignmentViewModel;

abstract class _DeleteAssignmentViewModel with Store {
  AssignmentRepo? assignmentRepo;
  _DeleteAssignmentViewModel() {
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
