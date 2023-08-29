import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:profile_bloc_app/features/users/domain/models/user.dart';

class UsersRemoteDataSource {
  final _dio = Dio();

  Options options = Options(headers: {
    'Content-Type': 'application/json',
    'Authorization': 'Bearer ...'
  });

  Future<dynamic> getAllUsers() async {
    const url = 'https://reqres.in/api/users';

    final response = await _dio.get(url);

    if (response.statusCode == 200) {
      List<User>? userData = response.data['data']
          .map((json) => User.fromJson(json))
          .toList()
          .cast<User>();
      return userData;
    } else {
      log('${response.statusCode} : ${response.data.toString()}');
    }
  }
}
