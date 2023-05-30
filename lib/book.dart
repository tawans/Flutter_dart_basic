// 책 클래스 (유형 자산 상속)
import 'package:dart_basic/tangible_asset.dart';

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
