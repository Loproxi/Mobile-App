import 'package:flutter/material.dart';
import 'package:practica1/model/restaurant.dart';
import 'package:practica1/widgets/app_button.dart';
import 'package:practica1/widgets/bottom_navigation_.dart';
import 'package:practica1/widgets/restaurant_info_space.dart';
import 'package:provider/provider.dart';

class RestaurantInfo extends StatelessWidget {
  final Restaurant restaurant;
  const RestaurantInfo({
    Key? key,
    required this.restaurant,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: restaurant,
      child: Scaffold(
        body: Stack(
          children: [
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const RestaurantPhoto(),
                  Expanded(
                    flex: 6,
                    child: Container(
                      padding: const EdgeInsets.all(20),
                      child: const RestaurantInfoSpace(),
                    ),
                  ),
                ],
              ),
            ),
            const SafeArea(
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: BackButton(),
                ),
              ),
            ),
            const AppButton(
              alignment_: Alignment.topRight,
              buttonicon: Icons.favorite_border_outlined,
              paddingright: 80.0,
              paddingtop: 20.0,
            ),
            const AppButton(
              alignment_: Alignment.topRight,
              buttonicon: Icons.ios_share_outlined,
              paddingright: 10.0,
              paddingtop: 20.0,
            ),
            const AppButton(
              alignment_: Alignment.centerRight,
              buttonicon: Icons.info_outline_rounded,
              paddingright: 30.0,
              paddingtop: 20.0,
              ismini: true,
            ),
          ],
        ),
        bottomNavigationBar: const BottomNavigationBarApp(),
      ),
    );
  }
}

class RestaurantPhoto extends StatelessWidget {
  const RestaurantPhoto({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Image.asset(context.watch<Restaurant>().imageAsset),
    );
  }
}

class TextColored extends StatelessWidget {
  final String text;
  final Color? color;
  const TextColored({
    Key? key,
    required this.text,
    this.color = Colors.black,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        color: color,
        fontWeight: FontWeight.w900,
      ),
    );
  }
}
