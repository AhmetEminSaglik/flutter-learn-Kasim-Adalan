import 'dart:collection';

import '../dartlearnclass/Student.dart';
import '../dartlearnclass/StudentDB.dart';

void main() {
  StudentDB studentDB = StudentDB();
  var studentHashSet = HashSet<Student>();

  var studentList = studentDB.getStudentList();

  for (Student tmp in studentList) {
    studentHashSet.add(tmp);
  }

  printHashset(studentHashSet);
  studentHashSet.add(Student(no: 100, name: "Furkan", grade: "3B"));
  printHashset(studentHashSet);
}

void printHashset(HashSet<Student> hashSet) {
  print("Hashset : ");
  for (Student tmp in hashSet) {
    print(tmp);
  }
}
