import 'package:dart_demo/dartlearnclass/Student.dart';

void main() {
  var s1 = Student(no: 200, name: "Ahmet", grade: "4A");
  var s2 = Student(no: 100, name: "Gizem", grade: "5A");
  var s3 = Student(no: 300, name: "Necati", grade: "3A");

  var studentList = <Student>[];
  studentList.add(s1);
  studentList.add(s2);
  studentList.add(s3);
  print("Without Sort : ");
  printStudentList(studentList);

  Comparator<Student> sort1 = (x, y) => x.no.compareTo(y.no);
  Comparator<Student> sort2 = (x, y) => x.name.compareTo(y.name);
  Comparator<Student> sort3 = (x, y) => x.grade.compareTo(y.grade);
  studentList.sort(sort1);
  print("After Sort (no): ");
  printStudentList(studentList);
  studentList.sort(sort2);
  print("After Sort (name): ");
  printStudentList(studentList);
  studentList.sort(sort3);
  print("After Sort (grade): ");
  printStudentList(studentList);
}

void printStudentList(List<Student> list) {
  for (var student in list) {
    print("$student");
  }
}
