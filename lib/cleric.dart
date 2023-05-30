import 'dart:math';

class Cleric {
  static const maxHP = 50;
  static const maxMP = 10;
  String name;
  int hp;
  int mp;

  Cleric(
    this.name, {
    this.hp = Cleric.maxHP,
    this.mp = Cleric.maxMP,
  }); // Cleric({
  //   required this.name,
  //   int? hp,
  //   int? mp,
  // })  : hp = hp ?? maxHP,
  //       mp = mp ?? maxMP;

  void selfAid() {
    if (mp >= 5) {
      mp -= 5;
      hp = maxHP;
    }

    int pray(int prayTimeSecond) {
      int recoveryPoint = 0;
      if (prayTimeSecond > 0) {
        recoveryPoint = prayTimeSecond + Random().nextInt(3);
      }
      return recoveryPoint;
    }
  }
}
