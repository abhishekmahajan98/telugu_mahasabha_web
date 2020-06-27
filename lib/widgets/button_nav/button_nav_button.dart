import 'package:flutter/material.dart';

class ButtonNavElement extends StatelessWidget {
  final String title;
  final Function onTap;
  final Color txtclr;
  final double fontSize;
  ButtonNavElement(
      {this.title, this.onTap, this.txtclr = Colors.white, this.fontSize = 20});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          title,
          style: TextStyle(
            color: txtclr,
            fontSize: fontSize,
          ),
        ),
      ),
    );
  }
}
