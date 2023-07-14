import 'dart:io';
import 'dart:math';

import '../dartlearnclass/CanSize.dart';
import '../dartlearnclass/Castle.dart';
import '../dartlearnclass/DartModifier.dart';
import '../dartlearnclass/Person.dart';
import '../dartlearnclass/House.dart';
import '../dartlearnclass/Villa.dart';

void main() {
  // print("hello dart");
  // printRandomNumber();
  // printForLoop();
  // int number = printAndGetNumber();
  // printSwitchCase(number);
  // printStaticText();
  // printName();
  // printPersonData();
  // printDartModifiers();
  // printCanSize(CanSize.Big);
  // printCanSize(CanSize.Small);
  // printIsCheck();
  // printList();
  // printArray();
  printListItems();
}

printListItems() {
  var fruits = <String>[];

  fruits.add("Strawberry");
  fruits.add("Banana");
  fruits.add("Apple");
  fruits.add("Kiwi");
  fruits.add("Cherry");
  print("for each :");
  for (var tmp in fruits) {
    print("tmp : $tmp");
  }
  print("--------");
  print("for loop :");
  for (var i = 0; i < fruits.length; i++) {
    print("${i + 1}-) ${fruits[i]}");
  }
}

void printList() {
  List<dynamic> list = [];
  list.add("value");
  list.add(23);
  print("list $list");

  List<int> list2 = [10, 20, 30];
  print("list2 $list2");
  var list3 = <dynamic>[];
  list3.add("text data");
  list3.add(3.12);
  print("list3 $list3");
  var list4 = <int>[22, 33, 44];
  print("list4 $list4");
}

void printArray() {
  var numbers = [16, 34, 6];
  print("numbers: $numbers");
  var numbers2 = [];
  numbers2.add(10);
  numbers2.add(101);
  numbers2.add(1001);
  print("numbers2 : $numbers2");
}

void printIsCheck() {
  House house = new House(windowNumber: 3);
  Villa villa = new Villa(windowNumber: 4, hasGarage: true);
  Castle castle = new Castle(windowNumber: 5, towerNumber: 4);

  if (villa is House) {
    print("Villa IS House");
  } else {
    print("Villa IS NOT House");
  }

  if (villa is Castle) {
    print("Villa IS Castle");
  } else {
    print("Villa IS NOT Castle");
  }

  if (castle is House) {
    print("Castle IS House");
  } else {
    print("Castle IS NOT House");
  }

  if (castle is Villa) {
    print("Castle IS Villa");
  } else {
    print("Castle IS NOT Villa");
  }

  if (house is Castle) {
    print("house IS Castle");
  } else {
    print("house IS NOT Castle");
  }

  if (house is Villa) {
    print("house IS Villa");
  } else {
    print("house IS NOT Villa");
  }
}

void printCanSize(CanSize canSize) {
  print("cansize : $canSize");
  print("cansize : ${canSize.getName(canSize)}");

  switch (canSize) {
    case CanSize.Small:
      print(20 * 30);
      break;
    case CanSize.Middle:
      print(30 * 30);
      break;
    case CanSize.Big:
      {
        print(40 * 30);
        break;
      }
  }
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
