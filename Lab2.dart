abstract class Unis {
  String name;
  String address;

  Unis(this.name, this.address);

  void addStudent(String student);
  void showStudents();
  void info();
}

class College implements Unis {
  @override
  String name;

  @override
  String address;

  List<String> _students = [];

  College(this.name, this.address);

  @override
  void addStudent(String student) {
    _students.add(student);
  }

  @override
  void showStudents() {
    print("Студенти коледжу $name:");
    for (var s in _students) {
      print("- $s");
    }
  }

  @override
  void info() {
    print("Коледж: $name, адреса: $address");
  }
}

class Universytet implements Unis {
  @override
  String name;

  @override
  String address;

  List<String> _students = [];
  int faculties;

  Universytet(this.name, this.address, this.faculties);

  @override
  void addStudent(String student) {
    _students.add(student);
  }

  @override
  void showStudents() {
    print("Студенти університету $name:");
    for (var s in _students) {
      print("- $s");
    }
  }

  @override
  void info() {
    print("Університет: $name, адреса: $address, кількість факультетів: $faculties");
  }
}

void main() {
  var college = College("Лісотехнічний коледж", "м. Львів, вул. Чупринки");
  college.addStudent("Ядчишин Артур");
  college.addStudent("Ядчишин Артур2");
  college.info();
  college.showStudents();

  print("\n\n");

  var university = Universytet("Національний лісотехнічний університет", "м. Львів, вул. Чупринки", 100);
  university.addStudent("Ядчишин Артур3");
  university.addStudent("Ядчишин Артур4");
  university.addStudent("Ядчишин Артур5");
  university.info();
  university.showStudents();
}
