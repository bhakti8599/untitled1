
import 'package:untitled1/data/network/client/dioclient.dart';
import 'package:untitled1/data/network/models/httpreponsehandler.dart';
import 'package:untitled1/data/network/models/responce/logoutresponce.dart';

import '../base/base.dart' as BaseUrl;
import '../base/endpoints.dart' as endPoints;

class LogoutRepo {
  DioClientNew? httpClient;

  LogoutRepo() {
    httpClient = DioClientNew();
  }

  Future<HttpResponse> getLogout() async {
    HttpResponse httpResponse = HttpResponse();

    // httpClient !.client!.options = BaseOptions(contentType: Headers.formUrlEncodedContentType);

    await httpClient!
        .get(
      BaseUrl.baseUrl + endPoints.Student().studentLogout,
    )
        .then((responce) async {
      print(responce);

      if (responce.statusCode == 200) {
        httpResponse.status = responce.statusCode;
        httpResponse.message = 'Successful';
        httpResponse.data = LogOutResponse.fromJson(responce.data);

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
