import 'unit.dart';

class Game {
  List<Unit> units = [];

  void addUnit(Unit unit) {
    if (units.length < 12) {
      units.add(unit);
    }
  }
}
