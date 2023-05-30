import 'package:dart_basic/cleric.dart';

import '../lib/hero.dart';
import '../lib/sword.dart';
import '../lib/wizard.dart';

void main() {
  Hero hero = Hero(name: '슈퍼맨', hp: 100);
  Hero hero2 = Hero(name: '배트맨', hp: 40);
  var hero3 = Hero(name: '토르', hp: 60);
  final hero4 = Hero(name: '아이언맨', hp: 100);
  final sword = Sword(name: '불의 검', damage: 40);
  final cleric = Cleric('클레1', hp: 5, mp: 40);
  final cleric2 = Cleric('클레2', hp: 3);
  final cleric3 = Cleric('클레릭맨');

  void myMethod() {
    print('${cleric3.hp}');
    print('메서드 실행 myField 값은 ${cleric3.hp} 입니다.');
  }

  myMethod();

  final wizard1 = Wizard(name: '법사입니다', hp: 40);

  //print(wizard1.wand);

  // Set<String> mySet = Set<String>();
  // mySet.add('Apple');
  // mySet.add('Banana');
  // mySet.add('Cherry');

  // Set<String> mySet = {'Apple', 'Banana', 'Cherry'};
  //
  // for (var element in mySet) {
  //   print(element);
  // }
}
