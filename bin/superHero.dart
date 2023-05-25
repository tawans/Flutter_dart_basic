import 'hero.dart';

class SuperHero extends Hero {
  SuperHero({required super.name, required super.hp});
  // 슈퍼 생성자

  // 올바른 상속
  // is-a 원칙 이라고 하는 규칙에 따른 상속
  // SuperHero 는 Hero 다
  // 현실 세계의 등장인물 사이에 개념적으로 is-a 관계가 되지 못 함에도 불구하고 상속을 사용한 경우가 “잘못 된 상속" 이다.
  // 예) 필드로 이름과 가격을 가지는 Item 클래스 (약초, 포션) 를 상속 받는 House

  @override
  void run() {
    print('신나게 뛰었다');
    super.run();
  }

  void main() {
    final hero = Hero(name: 'ㅇㄹ', hp: 30);
    hero.run();

    final superHero = SuperHero(name: '잘함', hp: 30);
    superHero.run();
  }
}
