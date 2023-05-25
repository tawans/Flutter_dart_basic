import 'tangible_asset.dart';

class Book extends TangibleAsset {
  String name;
  int price;
  String color;
  String isbn;

  Book(
    super._weight, {
    required this.name,
    required this.price,
    required this.color,
    required this.isbn,
  });
}
