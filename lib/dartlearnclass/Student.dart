class Student {
  int no;
  String name;
  String grade;

  Student({required this.no, required this.name, required this.grade});

  @override
  String toString() {
    return 'Student{no: $no, name: $name, grade: $grade}';
  }
}
