import 'tangible_asset.dart';

// 책 클래스 (유형 자산 상속)
class Book extends TangibleAsset {
  String isbn;

  Book({
    required this.isbn,
    required super.name,
    required super.price,
    required super.color,
    required super.weight,
  });
}
