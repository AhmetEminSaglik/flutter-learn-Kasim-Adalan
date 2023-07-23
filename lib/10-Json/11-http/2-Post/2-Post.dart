import 'dart:convert';
import 'package:http/http.dart' as http;

import 'User.dart';
import 'UserDataResult.dart';

//Post search
Future<List<User>> getUserById(int userId) async {
  Uri url = Uri.parse("https://jsonplaceholder.typicode.com/users");
  var requestData = {"id": userId};
  var resp = await http.post(url, body: requestData);

  var jsonData = json.decode(resp.body);
  List<User> userList = UserDataResult.fromJson(jsonData).userList;
  return userList;
}

//Post Insert
Future<void> addUser(String name, String phone) async {
  Uri url = Uri.parse(".../insert/user");
  var requestData = {"name": name, "phone": phone};
  var resp = await http.post(url, body: requestData);
  print("respond : ${resp.body}");
}
