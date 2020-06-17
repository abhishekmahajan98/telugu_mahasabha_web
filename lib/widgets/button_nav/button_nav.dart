import 'package:flutter/material.dart';
import 'package:telugu_mahasabha_web/widgets/button_nav/button_nav_button.dart';

class ButtonNav extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Container(
      height: screenHeight / 15,
      decoration: BoxDecoration(
        border: Border.all(
          width: 2,
        ),
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 128, 0, 0),
            Color.fromARGB(255, 132, 0, 0),
            Color.fromARGB(255, 136, 0, 0),
            Color.fromARGB(255, 140, 0, 0),
            Color.fromARGB(255, 144, 0, 0),
            Color.fromARGB(255, 148, 0, 0),
            Color.fromARGB(255, 152, 0, 0),
          ],
        ),
      ),
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
