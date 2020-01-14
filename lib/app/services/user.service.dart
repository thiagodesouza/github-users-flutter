import 'package:dio/dio.dart';
import 'package:github_users/app/models/user.model.dart';
import 'package:github_users/app/settings.dart';

class UserService {
  Future<UserModel> getUser(String username) async {
    var endpoint = '${Settings.apiUrl}/users';
    var response = await Dio().get('$endpoint/$username');
    return UserModel.fromJson(response.data);
  }
}
