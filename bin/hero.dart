import 'sword.dart';

class Hero {
  // field
  // member variable (멤버 변수)
  // global variable (전역 변수)
  String name;
  int hp;
  Sword? sword; // 칼이 있을 수 도 있고 없을 수도 있다

  // 생성자
  Hero({
    required this.name,
    required this.hp,
    this.sword,
  });

  // 클래스 안에 작성한 함수 = 메서드
  void attack() {
    if (sword == null) {
      print('주먹으로 때린다');
    } else {
      print('${sword?.name}칼로 ${sword?.damage} 만큼 때린다');
    }
  }

  void run() {
    print('$name 이 도망쳤다.');
  }

  void sleep() {
    hp = 100;
    // String interpolation
    print('$name 은 잠을 자고 회복했다');
  }
}
