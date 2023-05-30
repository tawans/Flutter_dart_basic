import 'protos.dart';
import 'unit.dart';

class Game {
  List<Unit> units = [];

  get allUnits => null;

  void addUnit(Unit unit) {
    if (units.length < 12) {
      units.add(unit);
    }
  }

  void automaticRecovery() {
    allUnits.forEash((e) {
      if (e is Shield) {
        (e).recoveryShield();
      }
    });
  }
}
