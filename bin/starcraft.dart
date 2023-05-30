abstract interface class StarCraft {}

abstract interface class Terran {}

abstract interface class Bionic {}

abstract interface class Mechanic {}

abstract interface class Repairable {}

class Tank implements Mechanic {}

class Scv implements Mechanic, Bionic, Repairable {
  void repair(Repairable repairable) {
    switch (repairable) {}
  }
}

class Medic {
  void heal() {}
}
