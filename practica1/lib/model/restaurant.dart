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
  String schedule;
  Variant reststate;
  Variant priority;
  String ratings;
  double stars;
  double timeleft;
  bool favorite = false;
  Restaurant({
    required this.name,
    required this.imageAsset,
    required this.schedule,
    required this.stars,
    required this.reststate,
    required this.ratings,
    required this.timeleft,
    required this.priority,
  });
}
