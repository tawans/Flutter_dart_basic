/// collectionChartDataList : [{"collectionName":"collectionName","collectionSalePrice":null},{"collectionName":"collectionName","collectionSalePrice":[{"price":59.75,"cvtDatetime":"2023-03-26T08:08:35"},{"price":60.00,"cvtDatetime":"2023-03-26T08:08:45"},null]}]

class ListData {
  ListData({
    List<CollectionChartDataList>? collectionChartDataList,
  }) {
    _collectionChartDataList = collectionChartDataList;
  }

  ListData.fromJson(dynamic json) {
    if (json['collectionChartDataList'] != null) {
      _collectionChartDataList = [];
      json['collectionChartDataList'].forEach((v) {
        _collectionChartDataList?.add(CollectionChartDataList.fromJson(v));
      });
    }
  }
  List<CollectionChartDataList>? _collectionChartDataList;
  ListData copyWith({
    List<CollectionChartDataList>? collectionChartDataList,
  }) =>
      ListData(
        collectionChartDataList:
            collectionChartDataList ?? _collectionChartDataList,
      );
  List<CollectionChartDataList>? get collectionChartDataList =>
      _collectionChartDataList;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_collectionChartDataList != null) {
      map['collectionChartDataList'] =
          _collectionChartDataList?.map((v) => v.toJson()).toList();
    }
    return map;
  }
}

/// collectionName : "collectionName"
/// collectionSalePrice : null

class CollectionChartDataList {
  CollectionChartDataList({
    String? collectionName,
    dynamic collectionSalePrice,
  }) {
    _collectionName = collectionName;
    _collectionSalePrice = collectionSalePrice;
  }

  CollectionChartDataList.fromJson(dynamic json) {
    _collectionName = json['collectionName'];
    _collectionSalePrice = json['collectionSalePrice'];
  }
  String? _collectionName;
  dynamic _collectionSalePrice;
  CollectionChartDataList copyWith({
    String? collectionName,
    dynamic collectionSalePrice,
  }) =>
      CollectionChartDataList(
        collectionName: collectionName ?? _collectionName,
        collectionSalePrice: collectionSalePrice ?? _collectionSalePrice,
      );
  String? get collectionName => _collectionName;
  dynamic get collectionSalePrice => _collectionSalePrice;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['collectionName'] = _collectionName;
    map['collectionSalePrice'] = _collectionSalePrice;
    return map;
  }
}
