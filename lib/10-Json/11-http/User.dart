import 'package:dart_demo/10-Json/11-http/Address.dart';
import 'package:dart_demo/10-Json/11-http/Company.dart';

class User {
  int id;
  String name;
  String email;
  String phone;
  Address address;
  Company company;

  User(this.id, this.name, this.email, this.phone, this.address, this.company);

  factory User.fromJson(Map<String, dynamic> json) {
    Address address = Address.fromJson(json);
    Company company = Company.fromJson(json);
    return User(json["id"] as int, json["name"] as String,
        json["email"] as String, json["phone"] as String, address, company);
  }

  @override
  String toString() {
    return 'User{id: $id, name: $name, email: $email, phone: $phone, address: $address, company: $company}';
  }
}
