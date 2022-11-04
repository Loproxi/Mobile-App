import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final Alignment alignment_;
  final IconData buttonicon;
  final double? paddingtop;
  final double? paddingright;
  final bool? ismini;
  const AppButton({
    Key? key,
    this.ismini = false,
    this.paddingtop = 20.0,
    this.paddingright = 20.0,
    required this.buttonicon,
    required this.alignment_,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: alignment_,
        child: Padding(
          padding: EdgeInsets.only(
            top: paddingtop ?? 20.0,
            right: paddingright ?? 20.0,
          ),
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.white,
            mini: ismini ?? false,
            // ignore: unnecessary_const
            child: Icon(
              buttonicon,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
