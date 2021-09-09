

import 'package:mobx/mobx.dart';
import 'package:untitled1/data/local/client/localprefsmodel.dart';
import 'package:untitled1/data/network/models/httpreponsehandler.dart';
import 'package:untitled1/data/network/models/request/questionpaperrequest.dart';
import 'package:untitled1/data/network/models/responce/questionpaperresponce.dart';
import 'package:untitled1/data/network/repository/questionpaperrepo.dart';
import '../main.dart';

part 'questionpaperviewmodel.g.dart';

class QuestionPaperViewModel = _QuestionPaperViewModel with _$QuestionPaperViewModel;

abstract class _QuestionPaperViewModel with Store {
  QuestionPaperRepo? questionPaperRepo;
  _QuestionPaperViewModel() {
  questionPaperRepo =QuestionPaperRepo();
  }

  @observable
  String title = '';

  @observable
  bool isLoading = true;
  @observable
  QuestionPaperResponse? questionPaperResponse;
  @observable
  String desc = '';

  @action
  Future<void> getQuestionPaper() async {
    isLoading = true;
    HttpResponse httpResponse = await questionPaperRepo!.getQuestionPaper(QuestionPaperRequestModel(globalSharePrefs!.getString(StudentId)));

    {
      if (httpResponse.status == 200) {
        questionPaperResponse = httpResponse.data;
      }
    }
    isLoading = false;
  }
}
