import 'package:flutter/material.dart';

class AppButton extends StatefulWidget {
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
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  bool isFavorite = false;

  void togglebutton() {
    setState(() {
      if (isFavorite) {
        isFavorite = false;
      } else {
        isFavorite = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Align(
        alignment: widget.alignment_,
        child: Padding(
          padding: EdgeInsets.only(
            top: widget.paddingtop ?? 20.0,
            right: widget.paddingright ?? 20.0,
          ),
          child: FloatingActionButton(
            onPressed: togglebutton,
            backgroundColor: Colors.white,
            mini: widget.ismini ?? false,
            // ignore: unnecessary_const
            child: Icon(
              widget.buttonicon,
              color: isFavorite ? Colors.red : Colors.grey,
            ),
          ),
        ),
      ),
    );
  }
}
