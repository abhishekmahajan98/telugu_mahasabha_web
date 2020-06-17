import 'package:flutter/material.dart';
import 'package:telugu_mahasabha_web/widgets/button_nav/button_nav_button.dart';

class SideDrawerTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            child: Image.asset('assets/images/logo.jpg'),
          ),
          ButtonNavElement(
            title: 'Home',
            onTap: () {},
            txtclr: Colors.black,
          ),
          ButtonNavElement(
            title: 'About us',
            onTap: () {},
            txtclr: Colors.black,
          ),
          ButtonNavElement(
            title: 'RTS Events',
            onTap: () {},
            txtclr: Colors.black,
          ),
          ButtonNavElement(
            title: 'Zonal Activities',
            onTap: () {},
            txtclr: Colors.black,
          ),
          ButtonNavElement(
            title: 'Meetings',
            onTap: () {},
            txtclr: Colors.black,
          ),
        ],
      ),
    );
  }
}
