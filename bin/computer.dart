import 'tangible_asset.dart';

// 컴퓨터 클래스 (유형 자산 상속)
class Computer extends TangibleAsset {
  String makerName;

  Computer({
    required this.makerName,
    required super.name,
    required super.price,
    required super.color,
    required super.weight,
  });
}
