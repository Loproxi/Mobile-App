import 'package:flutter/material.dart';
import 'package:practica1/model/restaurant.dart';
import 'package:practica1/widgets/restaurant_info.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                height: 240,
                decoration: const BoxDecoration(
                    //image: DecorationImage(image: AssetImage("a"))
                    color: Colors.black),
              ),
              //const RestaurantInfo(restaurant: Restaurant(),),
            ],
          ),
        ),
      ),
    );
  }
}
