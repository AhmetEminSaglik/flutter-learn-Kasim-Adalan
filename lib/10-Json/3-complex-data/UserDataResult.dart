import 'User.dart';

class UserDataResult {
  int success;
  List<User> userList;

  UserDataResult(this.success, this.userList);

  factory UserDataResult.fromJson(Map<String, dynamic> json) {
    var jsonArray = json["users"] as List;
    List<User> userList =
        jsonArray.map((jsonArray) => User.fromJson(jsonArray)).toList();

    return UserDataResult(json["success"], userList);
  }
}
