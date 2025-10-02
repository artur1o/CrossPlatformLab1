class ComputerRepair {
  String shift;
  int repairedComputers;

  ComputerRepair(this.shift, this.repairedComputers);

  String get getShift => shift;
  set setShift(String value) => shift = value;

  int get getRepairedComputers => repairedComputers;
  set setRepairedComputers(int value) => repairedComputers = value;

  @override
  String toString() =>
      "Зміна: $shift, відремонтовано: $repairedComputers комп'ютерів";
}

class Workshop {
  String name;
  String address;
  List<ComputerRepair> repairs;

  Workshop(this.name, this.address, this.repairs);

  int totalRepaired() {
    return repairs.fold(0, (sum, item) => sum + item.repairedComputers);
  }

  ComputerRepair maxRepairedShift() {
    repairs.sort((a, b) => b.repairedComputers.compareTo(a.repairedComputers));
    return repairs.first;
  }

  int streetNameLength() {
    return address.length;
  }

  void showInfo() {
    print("Майстерня: $name, Адреса: $address");
    for (var r in repairs) {
      print(r);
    }
    print("Сумарно відремонтовано: ${totalRepaired()} комп'ютерів");
    var maxShift = maxRepairedShift();
    print(
        "Найпродуктивніша зміна: ${maxShift.shift}, відремонтовано ${maxShift.repairedComputers}");
    print("Довжина назви вулиці: ${streetNameLength()} символів");
  }
}

void main() {
  var morning = ComputerRepair("Ранкова", 25);
  var evening = ComputerRepair("Вечірня", 32);
  var night = ComputerRepair("Нічна", 18);

  var workshop = Workshop("Без назви", "вул. Вулиці, 22", [morning, evening, night]);

  workshop.showInfo();
}

