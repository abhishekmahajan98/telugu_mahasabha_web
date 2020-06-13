import 'package:flutter/material.dart';
import 'package:telugu_mahasabha_web/widgets/button_nav/button_nav_button.dart';

class ButtonNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      //height: 50,
      //color: Color(0xffd78112),
      //padding: EdgeInsets.all(0),
      color: Color.fromARGB(255, 128, 0, 0),
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
