import 'terran.dart';

abstract interface class Shield {
  void recoveryShield() {}
}

class Zealot implements Shield, Bionic {
  @override
  void recoveryShield() {}
}

class Dragun implements Shield, Mechanic {
  @override
  void recoveryShield() {}
}
