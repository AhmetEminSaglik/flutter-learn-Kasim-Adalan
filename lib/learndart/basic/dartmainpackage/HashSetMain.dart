import 'dart:collection';

void main() {
  var nums = HashSet<int>();
  var names = HashSet.from(["Ahmet", "Emin"]);
  var fruits = HashSet<String>();

  fruits.add("Strawberry");
  fruits.add("Banana");
  fruits.add("Apple");
  fruits.add("Kiwi");
  print(fruits);
  fruits.add("Applee");

  print(fruits);
}
