import 'package:dio/dio.dart';
import 'package:theme_change/dio_app/model/user_model.dart';

const String url = 'https://reqres.in/api/users/';

class DioClient {
  final Dio _dio = Dio();
  late User user;

  Future<User> getData({required String id}) async {
    try {
      Response response = await _dio.get(url + '$id');
      print('We have the Data');
      user = User.fromJson(response.data);
      print(user.toString());
    } on DioError catch (e) {
      if (e.response != null) {
        print('Dio error!');
        print('STATUS: ${e.response?.statusCode}');
        print('DATA: ${e.response?.data}');
        print('HEADERS: ${e.response?.headers}');
      } else {
        // Error due to setting up or sending the request
        print('Error sending request!');
        print(e.message);
      }
    }
    return user;
  }
}
