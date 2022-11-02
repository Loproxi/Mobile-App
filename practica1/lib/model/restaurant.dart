import 'dart:ui';

class Variant {
  String name;
  Color color;
  Variant(this.name, this.color);
}

class Feature {
  String icon;
  num value;
  String units;
  Feature(this.icon, this.value, this.units);
}

class Restaurant {
  String name;
  String imageAsset;
  String description;
  double price;
  bool favorite = false;
  Restaurant({
    required this.name,
    required this.imageAsset,
    required this.description,
    required this.price,
  });
}
