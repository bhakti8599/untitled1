// import 'package:aroundmevendor/data/local/client/localprefsmodel.dart';
// import 'package:aroundmevendor/main.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:untitled1/data/local/client/localprefsmodel.dart';


import '../../../main.dart';
import '../base/base.dart' as BaseUrl;

class DioClientNew {
  Dio? client;

  DioClientNew() {
    print('token ${globalSharePrefs!.getString(AccessToken)}');

    Map<String, dynamic> headers = {};
    headers['Content-Type'] = 'application/json';
    headers['x-access-token'] = globalSharePrefs!.getString(AccessToken);
    BaseOptions options = BaseOptions(
      baseUrl: BaseUrl.baseUrl,
      connectTimeout: 60000,
      receiveTimeout: 60000,
      headers: headers,
    );

    RequestOptions optionsMain;
    client = Dio(options);
    // client.interceptors.add(DioCacheManager(CacheConfig(baseUrl: BaseUrl.baseUrl)).interceptor);
    // client.interceptors.add(LogInterceptor());
    if (kDebugMode) {
      client!.interceptors.add(LogInterceptor(
          responseBody: true,
          error: true,
          requestHeader: true,
          responseHeader: false,
          request: false,
          requestBody: false));
    }
  }

  Future<Response> get(String endpoint, {dynamic body}) async {
    print("$endpoint    ${body.toString()} ");
    return client!.request(endpoint,
        data: body,
        options: Options(method: "GET", contentType: 'application/json'));
  }

  Future<Response> post(String endpoint, {dynamic body}) async {
    print("$endpoint    ${body.toString()} ");
    Response response;
    try {
      response = await client!
          .request(endpoint, data: body, options: Options(method: "POST"));
    } on DioError catch (e) {
      response = e.response!;
    }
    return response;
  }

  Future<Response> put(String endpoint, {dynamic body}) async {
    print("$endpoint    ${body.toString()} ");

    return client!
        .request(endpoint, data: body, options: Options(method: "PUT"));
  }

  Future<Response> delete(String endpoint, {dynamic body}) async {
    print("$endpoint    ${body.toString()} ");
    return client!
        .request(endpoint, data: body, options: Options(method: "DELETE"));
  }
}
