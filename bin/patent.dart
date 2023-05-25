import 'intangible_asset.dart';

class Patent extends IntangibleAsset {
  String name;
  String description;

  Patent({
    required this.name,
    required this.description,
  });
}
