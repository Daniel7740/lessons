import 'dart:convert';

import 'package:bloc_network_example/models/user.dart';
import 'package:http/http.dart' as http;

class UserProvider {
  Uri url = Uri(
    scheme: 'https',
    host: 'jsonplaceholder.typicode.com',
    path: '/users',
  );

  Future<List<User>> getUser() async {
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final List<dynamic> userJson = json.decode(response.body);
      return userJson.map((json) => User.fromJson(json)).toList();
    } else {
      throw Exception('Произошла ошибка!!!');
    }
  }
}
