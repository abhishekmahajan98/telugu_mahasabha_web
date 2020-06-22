import 'package:flutter/material.dart';
import 'package:telugu_mahasabha_web/constants/colorConstants.dart';
import 'package:telugu_mahasabha_web/widgets/button_nav/button_nav_button.dart';

class SideDrawerTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: buttonbarClr,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DrawerHeader(
              child: Image.asset('assets/images/newlogo.png'),
            ),
            ButtonNavElement(
              title: 'Home',
              onTap: () {},
              fontSize: 30,

            ),
            ButtonNavElement(
              title: 'About us',
              onTap: () {},
              fontSize: 30,
            ),
            ButtonNavElement(
              title: 'RTS Events',
              onTap: () {},
              fontSize: 30,
            ),
            ButtonNavElement(
              title: 'Zonal Activities',
              onTap: () {},
              fontSize: 30,
            ),
            ButtonNavElement(
              title: 'Meetings',
              onTap: () {},
              fontSize: 30,
            ),
          ],
        ),
      ),
    );
  }
}
