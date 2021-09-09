import 'package:untitled1/data/network/client/dioclient.dart';
import 'package:untitled1/data/network/models/httpreponsehandler.dart';
import 'package:untitled1/data/network/models/responce/registerresponce.dart';

import '../base/base.dart' as BaseUrl;
import '../base/endpoints.dart' as endPoints;

class SignUpRepo {
  DioClientNew? httpClient;

  AddEmployeeRepo() {
    httpClient = DioClientNew();
  }

  Future<HttpResponse> student(
      String name, String email, String password, String mobile) async {
    HttpResponse httpResponse = HttpResponse();

    // httpClient !.client!.options = BaseOptions(contentType: Headers.formUrlEncodedContentType);

    await httpClient!.post(
      BaseUrl.baseUrl + endPoints.Student().studentRegister,
      body: {
        'name': name,
        'password': password,
        'mobile': mobile,
        'email': email,
      },
    ).then((responce) async {
      print(responce);

      if (responce.statusCode == 200) {
        httpResponse.status = responce.statusCode;
        httpResponse.message = 'Successful';
        httpResponse.data = RegisterResponse.fromJson(responce.data);
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
