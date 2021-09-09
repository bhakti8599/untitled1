import 'package:untitled1/data/network/client/dioclient.dart';
import 'package:untitled1/data/network/models/httpreponsehandler.dart';
import 'package:untitled1/data/network/models/responce/editprofileresponce.dart';
import '../base/base.dart' as BaseUrl;
import '../base/endpoints.dart' as endPoints;

class UpdateProfileRepo {
  DioClientNew? httpClient;

  UpdateProfileRepo() {
    httpClient = DioClientNew();
  }

  Future<HttpResponse> updateStudent(
      String full_name,String email, String dob,String mobile,String address,String city,String state,String pincode,String gender) async {
    HttpResponse httpResponse = HttpResponse();

    // httpClient !.client!.options = BaseOptions(contentType: Headers.formUrlEncodedContentType);

    await httpClient!.post(
      BaseUrl.baseUrl + endPoints.Student().studentUpdateProfile,
      body: {
        'full_name': full_name,
        'dob': dob,
        'mobile': mobile,
        'email': email,
        'address':address,
        'city':city,
        'state':state,
        'pincode':pincode,
        'gender':gender
      },
    ).then((responce) async {
      print(responce);

      if (responce.statusCode == 200) {
        httpResponse.status = responce.statusCode;
        httpResponse.message = 'Successful';
        httpResponse.data = EditProfileResponse.fromJson(responce.data);
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
