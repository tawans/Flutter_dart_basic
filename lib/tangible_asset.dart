import 'package:dart_basic/thing.dart';

import 'asset.dart';

// 유형 자상 추상 클래스 (자산 상속 및 Thing 인터페이스 채택)
abstract class TangibleAsset extends Asset implements Thing {
  int price;
  String color;
  double _weight;

  TangibleAsset({
    required super.name,
    required this.price,
    required this.color,
    required double weight,
  }) : _weight = weight;

  @override
  double get weight => _weight;

  @override
  set weight(double value) {
    _weight = value;
  }
}
