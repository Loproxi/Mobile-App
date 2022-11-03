import 'package:flutter/material.dart';
import 'package:practica1/model/restaurant.dart';
import 'package:practica1/widgets/delivery_info.dart';
import 'package:practica1/widgets/restaurant_badges.dart';
import 'package:practica1/widgets/restaurant_state.dart';
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
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 4,
                child: Image.asset("assets/mcdo.png"),
              ),
              Expanded(
                flex: 6,
                child: Container(
                  padding: const EdgeInsets.all(20),
                  child: const RestaurantMain(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class RestaurantMain extends StatelessWidget {
  const RestaurantMain({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            text: context.watch<Restaurant>().name,
            style: const TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const RestaurantState(),
        const SizedBox(
          height: 14,
        ),
        const DeliveryInfo(),
        const SizedBox(
          height: 25,
        ),
        RestaurantBadges(
          badgeicon: Icons.group_add_outlined,
          badgecolor: Colors.grey.shade300,
          badgename: "Group",
        ),
        const SizedBox(
          height: 25,
        ),
        Container(
          height: 100,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            image: DecorationImage(
              image: AssetImage(
                "assets/mcdo2.jpg",
              ),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
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
