import 'intangible_asset.dart';

// 특허권 (무형 자산 상속)
class Patent extends IntangibleAsset {
  String description;

  Patent({
    required super.name,
    required super.type,
    required this.description,
  });
}
