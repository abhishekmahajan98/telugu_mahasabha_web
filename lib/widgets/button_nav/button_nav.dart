import 'package:flutter/material.dart';
import 'package:telugu_mahasabha_web/constants/colorConstants.dart';
import 'package:telugu_mahasabha_web/widgets/button_nav/button_nav_button.dart';

class ButtonNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight / 15,
      color: buttonbarClr,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ButtonNavElement(
            title: 'Home',
            onTap: () {},
          ),
          ButtonNavElement(
            title: 'About us',
            onTap: () {},
          ),
          ButtonNavElement(
            title: 'RTS Events',
            onTap: () {},
          ),
          ButtonNavElement(
            title: 'Zonal Activities',
            onTap: () {},
          ),
          ButtonNavElement(
            title: 'Meetings',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
