import 'package:untitled1/data/network/client/dioclient.dart';
import 'package:untitled1/data/network/models/httpreponsehandler.dart';
import 'package:untitled1/data/network/models/request/studentdetailsrequest.dart';
import 'package:untitled1/data/network/models/responce/studentdetailsresponce.dart';

import '../base/base.dart' as BaseUrl;
import '../base/endpoints.dart' as endPoints;

class StudentDetailsRepo {
  DioClientNew? httpClient;

  StudentDetailsRepo() {
    httpClient = DioClientNew();
  }

  Future<HttpResponse> getStudentDetails(StudentDetailsRequestModel model) async {
    HttpResponse httpResponse = HttpResponse();

    // httpClient !.client!.options = BaseOptions(contentType: Headers.formUrlEncodedContentType);

    await httpClient!
        .get(
      BaseUrl.baseUrl + endPoints.Student().studentDetails+model.getString(),
    )
        .then((responce) async {
      print(responce);

      if (responce.statusCode == 200) {
        httpResponse.status = responce.statusCode;
        httpResponse.message = 'Successful';
       httpResponse.data = StudentDetailsResponse.fromJson(responce.data);

        return httpResponse;
      } else {
        httpResponse.status = 400;
        httpResponse.message = 'Use Valid Details';
        httpResponse.data = null;
      }
      return httpResponse;
    }).catchError((err) {
      httpResponse.status = 400;
      httpResponse.message = "Invalid data";
      httpResponse.data = err.toString();
      return httpResponse;
    });

    return httpResponse;
  }
}
