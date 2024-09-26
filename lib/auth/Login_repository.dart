import 'package:dio/dio.dart';
import 'package:probox/Model/LoginModel.dart';
import 'package:probox/data/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dio/dio.dart';
import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginRepository {
  final Dio dio = Dio();

  Future<Loginmodel> login21({
    required String phone,
    required String code,
  }) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final Response response =
        await dio.post('https://api.probox.uz/api/v1/clients/send-code', data: {
      "phone": phone,
      "mobile_code": code,
    });
    final Loginmodel users = Loginmodel.fromJson(response.data);
    return users;
  }

  Future<void> login2({required String token, required String code}) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final Response response =
        await dio.post('https://api.probox.uz/api/v1/clients/sign-in', data: {
      "token": token,
      "code": code,
    });
    await prefs.setString("token", token);
    response.data['data']['token'];
  }
}
