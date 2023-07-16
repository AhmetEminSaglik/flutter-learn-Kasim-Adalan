class Student {
  int no;
  String name;
  String grade;
  Student({required this.no, required this.name, required this.grade});

  @override
  String toString() {
    return 'Student{no: $no, name: $name, grade: $grade}';
  }

  @override
  // TODO: implement hashCode
  int get hashCode => this.no;

  @override
  bool operator ==(Object other) {
    if (no == (other as Student).no) {
      return true;
    }

    return false;
    // TODO: implement ==
    // return super == other;
  }
}
