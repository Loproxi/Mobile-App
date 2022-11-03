import 'package:flutter/material.dart';

class RestaurantPromo extends StatelessWidget {
  final String path;
  const RestaurantPromo({
    Key? key,
    required this.path,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        image: DecorationImage(
          image: AssetImage(
            path,
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
