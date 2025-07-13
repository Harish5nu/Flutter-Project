import 'package:dio/dio.dart';

class loginService {
  Future<String> register({required String email, required String password}) async {
    final response = await Dio().post(
      'https://moderngrowth-us.backendless.app/api/users/register',
      data: {'email': email, 'password': password},
    );
    if (response.statusCode == 200) {
      return 'Registration successful';
    }
    return 'Registration failed.';
  }
}