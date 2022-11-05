import 'dart:ui';

class StringColor {
  String name;
  Color color;
  StringColor(this.name, this.color);
}

class Deliveryinfo {
  String num;
  String line;
  Deliveryinfo(this.num, this.line);
}

class Restaurant {
  String name;
  String imageAsset;
  String imagepromo;
  String schedule;
  StringColor reststate;
  StringColor priority;
  String ratings;
  double stars;
  Deliveryinfo deliverytimeleft;
  Deliveryinfo deliveryprice;
  Restaurant({
    required this.name,
    required this.imageAsset,
    required this.imagepromo,
    required this.schedule,
    required this.stars,
    required this.reststate,
    required this.ratings,
    required this.deliveryprice,
    required this.priority,
    required this.deliverytimeleft,
  });
}
