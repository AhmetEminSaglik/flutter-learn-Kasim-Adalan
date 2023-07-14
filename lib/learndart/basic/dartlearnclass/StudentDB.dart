import 'Student.dart';

class StudentDB {
  final _s1 = Student(no: 100, name: "Gizem", grade: "5A");
  final _s2 = Student(no: 200, name: "Ahmet", grade: "4A");
  final _s3 = Student(no: 300, name: "Necati", grade: "3A");
  var _studentList = <Student>[];

  List<Student> getStudentList() {
    if (_studentList.isEmpty) {
      _studentList.add(_s1);
      _studentList.add(_s2);
      _studentList.add(_s3);
    }

    return _studentList;
  }

  void printStudentList(List<Student> list) {
    for (var student in list) {
      print("$student");
    }
  }
}
