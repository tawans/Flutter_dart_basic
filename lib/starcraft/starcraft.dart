import 'terran.dart';

abstract interface class StarCraft {}

void main() {
  final scv = Scv();

  final medic = Medic();

  medic.heal(scv);
}
