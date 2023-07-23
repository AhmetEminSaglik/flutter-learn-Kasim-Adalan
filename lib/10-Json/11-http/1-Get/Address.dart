class Address {
  String street;
  String suite;
  String city;

  Address({required this.street,required this.suite,required this.city});

  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      street: json['street'] ?? '',
      suite: json['suite'] ?? '',
      city: json['city'] ?? ''
    );
  }

  @override
  String toString() {
    return 'Address{street: $street, suite: $suite, city: $city}';
  }
}
