import 'dart:ui';

class StringColor {
  String name;
  Color color;
  StringColor(this.name, this.color);
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
  double timeleft;
  bool favorite = false;
  Restaurant({
    required this.name,
    required this.imageAsset,
    required this.imagepromo,
    required this.schedule,
    required this.stars,
    required this.reststate,
    required this.ratings,
    required this.timeleft,
    required this.priority,
  });
}
