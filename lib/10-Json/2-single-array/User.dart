class User {
  int id;
  String name;
  String phone;

  User(this.id, this.name, this.phone);

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        json["id"] as int, json["name"] as String, json["phone"] as String);
  }

  @override
  String toString() {
    return 'User{id: $id, name: $name, phone: $phone}';
  }
}
