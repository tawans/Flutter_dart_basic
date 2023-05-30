import 'unit.dart';

abstract interface class Terran {}

abstract interface class Bionic {}

abstract interface class Mechanic {}

abstract interface class Repairable {}

class Tank extends Unit implements Mechanic {}

class Scv extends Unit implements Mechanic, Bionic, Repairable {
  void repair(Repairable repairable) {
    if (repairable is Barracks) {
      return;
    }
  }
}

class CommandCenter implements Repairable {}

class Barracks implements Repairable {}

class Medic extends Unit {
  void heal(Bionic bionic) {}
}
