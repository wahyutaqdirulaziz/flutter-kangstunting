import 'dart:convert';

import 'package:http/http.dart' as http;

class PostRegister {
  String? name;
  String? email;
  String? password;
  String? c_password;

  PostRegister({this.name, this.email, this.password, this.c_password});

  factory PostRegister.createPostRegister(Map<String, dynamic> objects) {
    return new PostRegister(
        name: objects['name'],
        email: objects['email'],
        password: objects['password'],
        c_password: objects['c_password']);
  }

  static Future<PostRegister?> connecAPI(
      String name, String email, String password, String c_password) async {
    String api = "http://192.168.0.2:8000/api/register";
    var apiResult = await http.post(Uri.parse(api), body: {
      "name": name,
      "email": email,
      "password": password,
      "c_password": c_password
    });
    var jsonObject = json.decode(apiResult.body);

    return PostRegister.createPostRegister(jsonObject);
  }
}
