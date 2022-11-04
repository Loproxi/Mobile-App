import 'package:flutter/material.dart';
import 'package:practica1/model/restaurant.dart';
import 'package:practica1/widgets/delivery_info.dart';
import 'package:practica1/widgets/restaurant_badges.dart';
import 'package:practica1/widgets/restaurant_promo.dart';
import 'package:practica1/widgets/restaurant_state.dart';
import 'package:provider/provider.dart';

class RestaurantInfoSpace extends StatelessWidget {
  const RestaurantInfoSpace({
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
        RestaurantPromo(
          path: context.watch<Restaurant>().imagepromo,
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 25.0,
            bottom: 25.0,
          ),
          child: Text.rich(
            TextSpan(
              text: "Featured Items",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        RestaurantBadges(
          badgecolor: Colors.lightBlueAccent.withOpacity(0.5),
          badgeicon: Icons.local_fire_department_outlined,
          badgename: "Most Liked",
          badgeheight: 25,
          textcolor: Colors.lightBlueAccent.shade700,
        )
      ],
    );
  }
}
