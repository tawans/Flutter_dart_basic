import 'tangible_asset.dart';

class Computer extends TangibleAsset {
  String name;
  int price;
  String color;
  String makerName;

  Computer(
    super._weight, {
    required this.name,
    required this.price,
    required this.color,
    required this.makerName,
  });
}
