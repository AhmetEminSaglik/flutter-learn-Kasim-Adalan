import 'package:dart_demo/10-Json/4-complex-data-foreing-key/Movie.dart';

class MovieDataResult {
  int success;
  List<Movie> movieList;

  MovieDataResult(this.success, this.movieList);

  factory MovieDataResult.fromJson(Map<String, dynamic> json) {
    var jsonArray = json["movies"] as List;

    List<Movie> movieList = jsonArray.map((e) => Movie.fromJson(e)).toList();
    return MovieDataResult(json["success"] as int, movieList);
  }

// factory UserDataResult.fromJson(Map<String, dynamic> json) {
//   var jsonArray = json["users"] as List;
//   List<User> userList =
//       jsonArray.map((jsonArray) => User.fromJson(jsonArray)).toList();
//
//   return UserDataResult(json["success"], userList);
// }
}
