import 'asset.dart';
import 'thing.dart';

// 무형 자산 추상 클래스 (자산 상속)
abstract class IntangibleAsset extends Asset {
  String type;

  IntangibleAsset({
    required super.name,
    required this.type,
  });
}
