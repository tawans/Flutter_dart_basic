import 'dart:convert';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  List<CollectionChartDataList> collectionChartDataList;

  Welcome({
    required this.collectionChartDataList,
  });

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        collectionChartDataList: List<CollectionChartDataList>.from(
            json["collectionChartDataList"]
                .map((x) => CollectionChartDataList.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "collectionChartDataList":
            List<dynamic>.from(collectionChartDataList.map((x) => x.toJson())),
      };
}

class CollectionChartDataList {
  String collectionName;
  List<CollectionSalePrice>? collectionSalePrice;

  CollectionChartDataList({
    required this.collectionName,
    this.collectionSalePrice,
  });

  factory CollectionChartDataList.fromJson(Map<String, dynamic> json) =>
      CollectionChartDataList(
        collectionName: json["collectionName"],
        collectionSalePrice: json["collectionSalePrice"] == null
            ? []
            : List<CollectionSalePrice>.from(json["collectionSalePrice"]!
                .map((x) => CollectionSalePrice.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "collectionName": collectionName,
        "collectionSalePrice": collectionSalePrice == null
            ? []
            : List<dynamic>.from(collectionSalePrice!.map((x) => x.toJson())),
      };
}

class CollectionSalePrice {
  double price;
  DateTime cvtDatetime;

  CollectionSalePrice({
    required this.price,
    required this.cvtDatetime,
  });

  factory CollectionSalePrice.fromJson(Map<String, dynamic> json) =>
      CollectionSalePrice(
        price: json["price"]?.toDouble(),
        cvtDatetime: DateTime.parse(json["cvtDatetime"]),
      );

  Map<String, dynamic> toJson() => {
        "price": price,
        "cvtDatetime": cvtDatetime.toIso8601String(),
      };
}
