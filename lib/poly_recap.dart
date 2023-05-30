import 'package:dart_basic/hero.dart';

import 'cleric.dart';

void main() {
  List<int> list = [1, 2, 3];

  Iterable<int> iterable = <int>[1, 2, 3];

  //list = iterable;
  //iterable = list

  Object object = Cleric('name');
  Object num = 1;

  dynamic object2 = Cleric('name');
  dynamic num2 = 2;

  print(num2.runtimeType);
  print(object2.runtimeType);

  Map<String, dynamic> person = {
    'name': '홍길동',
    'age': 10,
  };

  Map<String, Object> person2 = {
    'name': '홍길동',
    'age': 10,
  };

  print(Hero(name: '홍길동', hp: 40));

  // 리스트는 == 으로 동일성 비교를하고
  // 맵이랑 셋은 해시코드 기반으로 비교를 한다.
}
