import 'package:flutter/material.dart';
import 'package:practica1/screens/restaurant_info.dart';

class DeliveryInfo extends StatelessWidget {
  const DeliveryInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          const DeliveryState(
            num: "\$0.00",
            color: Color.fromARGB(255, 60, 145, 187),
            line: "delivery fee on \$12+",
          ),
          Container(
            width: 2,
            height: 50,
            color: Colors.grey.shade300,
          ),
          const DeliveryState(
            num: "25 min",
            color: Color.fromARGB(255, 0, 0, 0),
            line: "delivery time",
          ),
        ],
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
