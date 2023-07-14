import 'dart:io';
import 'dart:math';

import 'package:dart_demo/dartlearnclass/DartModifier.dart';
import 'package:dart_demo/dartlearnclass/Person.dart';

void main() {
  // print("hello dart");
  // printRandomNumber();
  // printForLoop();
  // int number = printAndGetNumber();
  // printSwitchCase(number);
  // printStaticText();
  // printName();
  // printPersonData();
  printDartModifiers();
}

void printDartModifiers() {
  var dartModifier = new DartModifier();
  print("dartModifier.publicVariable  :  ${dartModifier.publicVariable}");
  print("dartModifier(getter)  :  ${dartModifier.privateVariable}");
}

void printPersonData() {
  // var person = new Person(123,"Ahmet Emin");  --> Person(this.no, this.name);
  var person = new Person(
      no: 100,
      name: "Ahmet"); //-->Person({required this.no, required this.name});

  print("name : ${person.name}");
  print("no : ${person.no}");
  print("lastname : ${person.lastName}");
  print("age : ${person.age}");
}

void printRandomNumber() {
  int max = 10;
  int min = 5;
  var r = Random();
  int randomNumber = min + r.nextInt((max - min) + 1);
  print("randomNumber : $randomNumber");
}

void printForLoop() {
  for (var i = 0; i < 3; i++) {
    print('$i-)');
  }
}

int printAndGetNumber() {
  print("Enter number");
  int number = int.parse(stdin.readLineSync()!);
  print("2*$number= ${2 * number}");
  return number;
}

void printName() {
  print("Enter name");
  String? name = stdin.readLineSync();
  print("name : $name");
}

void printStaticText() {
  String text = "random text";
  print("text : $text");
}

void printSwitchCase(int number) {
  switch (number) {
    case 1:
      {
        print("case 1 ");
      }
      break;
    case 2:
      {
        print("case 2 ");
      }
      break;
    default:
      {
        print("default ");
      }
  }
}
