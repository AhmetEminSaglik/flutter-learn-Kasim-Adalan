class Director {
  int id;
  String name;

  Director(this.id, this.name);

  factory Director.fromJson(Map<String, dynamic> json) {
    return Director(json["id"] as int, json["name"] as String);
  }

  @override
  String toString() {
    return 'Director{id: $id, name: $name}';
  }
}
