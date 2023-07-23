class Company {
  String name;
  String catchPhrase;
  String bs;

  Company({required this.name,required this.catchPhrase,required this.bs});

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(
      name: json['name'] ?? '',
      catchPhrase: json['catchPhrase'] ?? '',
      bs: json['bs'] ?? ''
    );
  }
/*  Company(this.name, this.catchPhrase, this.bs);

  factory Company.fromJson(Map<String, dynamic> json) {
    return Company(json["name"] as String, json["catchPhrase"] as String,
        json["bs"] as String);
  }*/
}
