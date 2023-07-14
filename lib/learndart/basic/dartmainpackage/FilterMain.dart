import 'dart:math';

import '../dartlearnclass/Student.dart';

import '../dartlearnclass/StudentDB.dart';

void main() {
  var studentDB = StudentDB();

  var studentList = studentDB.getStudentList();
  Iterable<Student> filteredByNo =
      studentList.where((student) => student.no > 150);
  Iterable<Student> filteredByName =
      studentList.where((student) => student.name.length == 5);

  Iterable<Student> filteredByGrade =
      studentList.where((element) => element.grade.contains("3"));

  print("student List : ");
  studentDB.printStudentList(studentList);
  print("Student List FilteredByNo: ");
  studentDB.printStudentList(filteredByNo.toList());
  print("Student List FilteredByName: ");
  studentDB.printStudentList(filteredByName.toList());
  print("Student List FilteredByGrade: ");
  studentDB.printStudentList(filteredByGrade.toList());
}
