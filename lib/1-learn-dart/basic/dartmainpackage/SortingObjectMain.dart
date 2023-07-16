import '../dartlearnclass/Student.dart';
import '../dartlearnclass/StudentDB.dart';

void main() {
  var studentDB = StudentDB();
  var studentList = studentDB.getStudentList();

  print("Without Sort : ");
  studentDB.printStudentList(studentList);

  Comparator<Student> sort1 =
  (x, y) => x.no.compareTo(y.no);

  Comparator<Student> sort2 = (x, y) => x.name.compareTo(y.name);
  Comparator<Student> sort3 = (x, y) => x.grade.compareTo(y.grade);
  studentList.sort(sort1);
  print("After Sort (no): ");
  studentDB.printStudentList(studentList);
  studentList.sort(sort2);
  print("After Sort (name): ");
  studentDB.printStudentList(studentList);
  studentList.sort(sort3);
  print("After Sort (grade): ");
  studentDB.printStudentList(studentList);
}
