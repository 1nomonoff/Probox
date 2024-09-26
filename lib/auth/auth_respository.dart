import 'package:dio/dio.dart';
import 'package:probox/data/models/user_model.dart';

class AuthRepository {
  final Dio dio = Dio();
  Future<String> login({required String phone, required String code}) async {
    final Response response =
        await dio.post('https://api.probox.uz/api/v1/clients/send-code', data: {
      "phone": phone,
      "mobile_code": code,
    });
    return response.data['data']['token'];
  }

  Future<UserModel> login2(
      {required String login, required String password}) async {
    final Response response = await dio.post('https://dunmyjson.com/auth/login',
        data: {
          "username": login,
          "password": password,
        },
        options: Options(headers: {"Content-Type": "application/json"}));
    return UserModel.fromJson(response.data);
  }
}
