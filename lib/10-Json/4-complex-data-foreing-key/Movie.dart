import 'package:dart_demo/10-Json/4-complex-data-foreing-key/Category.dart';
import 'package:dart_demo/10-Json/4-complex-data-foreing-key/Director.dart';

class Movie {
  int id;
  String name;
  String year;
  String image;
  List<Category> categories;
  Director director;

  Movie(this.id, this.name, this.year, this.image, this.categories,
      this.director);

  factory Movie.fromJson(Map<String, dynamic> json) {
    var jsonArray = json["categories"] as List;
    List<Category> categoryList =
        jsonArray.map((e) => Category.fromJson(e)).toList();
    return Movie(
        json["id"] as int,
        json["name"] as String,
        json["year"] as String,
        json["image"] as String,
        categoryList,
        Director.fromJson(json["director"]));
  }

  @override
  String toString() {
    return 'Movie{id: $id, name: $name, year: $year, image: $image,\n categories: ${_getCategories()} \n director: $director}\n';
  }

  String _getCategories() {
    String text = "";
    for (var tmp in categories) {
      text += "$tmp,";
    }
    return text;
  }

// factory User.fromJson(Map<String, dynamic> json) {
//   return User(
//       json["id"] as int, json["name"] as String, json["phone"] as String);
// }
//
// @override
// String toString() {
//   return 'User{id: $id, name: $name, phone: $phone}';
// }
}
