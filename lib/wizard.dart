import 'package:dart_basic/wand.dart';

class Wizard {
  String name;
  int hp;
  Wand? wand;

  Wizard({
    required this.name,
    required this.hp,
    this.wand,
  }) {
    if (name.length < 3) {
      throw Exception("마법사의 이름은 3문자 이상이어야 합니다.");
    }
    if (wand == null) {
      throw Exception("마법사의 지팡이는 null 일 수 없습니다.");
    }
    if (wand != null && wand!.power < 0.5 || wand!.power > 100.0) {
      throw Exception("지팡이의 마력은 0.5 이상 100.0 이하여야 합니다.");
    }
    if (hp < 0) {
      hp = 0;
    }
  }
}
