class Person {
  //define variables in constructor is enough to use with or without late
  int no; //
  late String name;

  //if variable is not defined in constructor, shoud be used late or assing a value.
  late String lastName;

  //following line use more memory even if it is not called.
  int age = 0; // late must be used if not defined in constructor

  // Person(this.no, this.name);
  Person({required this.no, required this.name});
}
