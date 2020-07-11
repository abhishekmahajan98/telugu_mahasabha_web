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
          FlatButton(
            onPressed: () => Navigator.pushNamed(context, '/'),
            hoverColor: navbarClr,
            color: buttonbarClr,
            child: ButtonNavElement(
              title: 'Home',
            ),
          ),
          FlatButton(
            onPressed: () => Navigator.pushNamed(context, '/about'),
            hoverColor: navbarClr,
            color: buttonbarClr,
            child: ButtonNavElement(
              title: 'About us',
            ),
          ),
          FlatButton(
            onPressed: () => Navigator.pushNamed(context, '/members'),
            hoverColor: navbarClr,
            color: buttonbarClr,
            child: ButtonNavElement(
              title: 'Members',
            ),
          ),
          FlatButton(
            onPressed: () {},
            hoverColor: navbarClr,
            color: buttonbarClr,
            child: ButtonNavElement(
              title: 'RTS Events',
            ),
          ),
          FlatButton(
            onPressed: () {},
            hoverColor: navbarClr,
            color: buttonbarClr,
            child: ButtonNavElement(
              title: 'Zonal Activities',
            ),
          ),
          FlatButton(
            onPressed: () {},
            hoverColor: navbarClr,
            color: buttonbarClr,
            child: ButtonNavElement(
              title: 'Meetings',
            ),
          ),
        ],
      ),
    );
  }
}
