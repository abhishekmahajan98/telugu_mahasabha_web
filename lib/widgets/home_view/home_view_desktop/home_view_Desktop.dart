import 'package:flutter/material.dart';
import 'package:telugu_mahasabha_web/widgets/body/body.dart';
import 'package:telugu_mahasabha_web/widgets/navigation_bar/nav_bar_desktop.dart';

class HomeViewDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color.fromARGB(255, 255, 244, 198),
      backgroundColor: Color(0xffe6d385),
      floatingActionButton: SizedBox(
        height: 200,
        width: 150,
        child: Image.asset(
          'assets/images/telugu_mata_new.png',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: Column(
          children: [
            NavigationBarDesktop(),
            //ButtonNav(),
            Body(),
          ],
        ),
      ),
    );
  }
}
