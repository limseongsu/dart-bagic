abstract class Asset {
  int price;

  Asset({
    required this.price,
  });
}

abstract interface class Thing {
  double get weight;

  set weight(double weight);
}

abstract class TangibleAsset extends Asset implements Thing {
  String name;
  String color;

  @override
  double weight;

  TangibleAsset({
    required this.weight,
    required this.name,
    required super.price,
    required this.color,
  });
}

class Book extends TangibleAsset {
  String isbn;

  Book({
    required super.weight,
    required super.name,
    required super.price,
    required super.color,
    required this.isbn,
  });
}

class Computer extends TangibleAsset {
  String makerName;

  Computer({
    required super.weight,
    required super.name,
    required super.price,
    required super.color,
    required this.makerName,
  });
}
