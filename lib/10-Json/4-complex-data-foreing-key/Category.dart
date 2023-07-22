class Category {
  int id;
  String name;

  Category(this.id, this.name);

  factory Category.fromJson(Map<String, dynamic> json) {
    return Category(json["id"] as int, json["name"] as String);
  }

  @override
  String toString() {
    return '\nCategory{id: $id, name: $name}';
  }
}
