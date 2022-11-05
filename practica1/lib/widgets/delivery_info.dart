import 'package:flutter/material.dart';
import 'package:practica1/model/restaurant.dart';
import 'package:practica1/screens/restaurant_info.dart';
import 'package:provider/provider.dart';

class DeliveryInfo extends StatelessWidget {
  const DeliveryInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 70,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade300,
              spreadRadius: 2,
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DeliveryState(
              num: context.watch<Restaurant>().deliveryprice.num,
              color: const Color.fromARGB(255, 60, 145, 187),
              line: context.watch<Restaurant>().deliveryprice.line,
            ),
            Container(
              width: 2,
              height: 50,
              color: Colors.grey.shade300,
            ),
            DeliveryState(
              num: context.watch<Restaurant>().deliverytimeleft.num,
              color: const Color.fromARGB(255, 0, 0, 0),
              line: context.watch<Restaurant>().deliverytimeleft.line,
            ),
          ],
        ),
      ),
    );
  }
}

class DeliveryState extends StatelessWidget {
  final String num;
  final String line;
  final Color color;
  const DeliveryState({
    Key? key,
    required this.num,
    required this.color,
    required this.line,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextColored(
          text: num,
          color: color,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          line,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
