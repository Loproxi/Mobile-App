import 'package:flutter/material.dart';
import 'package:practica1/model/restaurant.dart';
import 'package:practica1/screens/restaurant_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: RestaurantInfo(
        restaurant: Restaurant(
          name: "McDonald's",
          imageAsset: "assets/fotomcdo.png",
          ratings: " 6,700+ ratings",
          reststate: Variant("Open now ", Colors.green),
          priority:
              Variant("DashPass", const Color.fromARGB(255, 60, 145, 187)),
          schedule: "· Closes at 10:29 AM",
          stars: 4.4,
          timeleft: 25,
        ),
      ),
    );
  }
}
