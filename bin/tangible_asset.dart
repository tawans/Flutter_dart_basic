import 'asset.dart';
import 'thing.dart';

//유형 자상 추상 클래스
abstract class TangibleAsset extends Asset implements Thing {
  double _weight;
  TangibleAsset(this._weight);

  @override
  double get weight => _weight;

  @override
  set weight(double value) {
    _weight = value;
  }
}
