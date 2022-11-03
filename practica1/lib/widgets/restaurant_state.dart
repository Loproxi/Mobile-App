import 'package:flutter/material.dart';
import 'package:practica1/model/restaurant.dart';
import 'package:practica1/screens/restaurant_info.dart';
import 'package:provider/provider.dart';

class RestaurantState extends StatelessWidget {
  const RestaurantState({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 10,
      ),
      child: Column(
        children: [
          Row(
            children: [
              const Icon(
                Icons.face,
                color: Color.fromARGB(255, 60, 145, 187),
                size: 15,
              ),
              TextColored(
                text: context.watch<Restaurant>().priority.name,
                color: context.watch<Restaurant>().priority.color,
              ),
              Text(
                " · ${context.watch<Restaurant>().name}",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Text(
                "${context.watch<Restaurant>().stars}",
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Icon(
                Icons.star,
                size: 15,
              ),
              Text(
                context.watch<Restaurant>().ratings,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            children: [
              TextColored(
                  text: context.watch<Restaurant>().reststate.name,
                  color: context.watch<Restaurant>().reststate.color),
              Text(
                context.watch<Restaurant>().schedule,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
