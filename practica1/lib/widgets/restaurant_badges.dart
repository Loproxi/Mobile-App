import 'package:flutter/material.dart';
import 'package:practica1/screens/restaurant_info.dart';

class RestaurantBadges extends StatelessWidget {
  final IconData badgeicon;
  final String badgename;
  final Color badgecolor;
  final Color? textcolor;
  final double? badgewidth;
  final double? badgeheight;
  const RestaurantBadges({
    Key? key,
    this.textcolor = Colors.black,
    this.badgewidth = 112,
    this.badgeheight = 40,
    required this.badgecolor,
    required this.badgeicon,
    required this.badgename,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: badgewidth,
      height: badgeheight,
      decoration: BoxDecoration(
        color: badgecolor,
        borderRadius: const BorderRadius.all(
          Radius.circular(45),
        ),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(badgeicon),
            TextColored(text: badgename, color: textcolor),
          ],
        ),
      ),
    );
  }
}
