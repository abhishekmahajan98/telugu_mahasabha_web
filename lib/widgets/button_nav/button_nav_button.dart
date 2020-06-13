import 'package:flutter/material.dart';

class ButtonNavElement extends StatelessWidget {
  final String title;
  final Function onTap;
  ButtonNavElement({this.title, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          title,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
