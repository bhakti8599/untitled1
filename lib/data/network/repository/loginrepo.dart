import 'package:dio/dio.dart';
import 'package:untitled1/data/network/client/dioclient.dart';
import 'package:untitled1/data/network/models/httpreponsehandler.dart';
import 'package:untitled1/data/network/models/request/loginrequest.dart';
import 'package:untitled1/data/network/models/responce/loginrespose.dart';

import '../base/base.dart' as BaseUrl;
import '../base/endpoints.dart' as endPoints;

class LoginRepo {
  DioClientNew? httpClient;

  LoginRepo() {
    httpClient = DioClientNew();
  }

  Future<HttpResponse> login(LoginRequestModel model) async {
    HttpResponse httpResponse = HttpResponse();

    httpClient!.client!.options =
        BaseOptions(contentType: Headers.formUrlEncodedContentType);
    await httpClient!
        .post(BaseUrl.baseUrl + endPoints.Student().studentLogin,
            body: model.toJson())
        .then((responce) async {
      print(responce);

      if (responce.statusCode == 200) {
        httpResponse.status = responce.statusCode;
        httpResponse.message = 'Successful';
       httpResponse.data = LoginResponse.fromJson(responce.data);
      } else {
        httpResponse.status = responce.statusCode;
        httpResponse.message = responce.data['message'];
        httpResponse.data = null;
      }
      return httpResponse;
    }).catchError((err) {
      httpResponse.status = 400;
      httpResponse.message = err.toString();
      httpResponse.data = err.toString();
      return httpResponse;
    });

    return httpResponse;
  }
}
