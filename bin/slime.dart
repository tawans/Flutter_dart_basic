import 'hero.dart';
import 'sword.dart';

class Slime {
  int hp = 50;
  final String suffix;

  Slime(this.suffix);

  void attack(Hero hero) {
    print('슬라임 $suffix 이/가 공격했다');
    print('${hero.name} 은/는 10 포인트의 데미지를 입었다.');
    hero.hp -= 10;
  }
}

class PoisonSlime extends Slime {
  int poisonAttackCount = 5;

  PoisonSlime(super.suffix);

  @override
  void attack(Hero hero) {
    super.attack(hero);

    if (poisonAttackCount > 0) {
      print('추가로, 독 포자를 살포했다!');
      int damage = (hero.hp / 5).ceil(); // 5를 나눈 후 ceil() 메서드를 통해 올림 처리
      hero.hp -= damage;
      print('${hero.name} 은/는 $damage 포인트의 데미지를 입었다.');
      poisonAttackCount--;
    }
  }
}

void main() {
  Hero hero = Hero(name: '짱짱전사', hp: 50);
  PoisonSlime poisonSlime = PoisonSlime('A');
  poisonSlime.attack(hero);
  poisonSlime.attack(hero);
}
