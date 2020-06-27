import 'package:flutter/material.dart';
import 'package:telugu_mahasabha_web/constants/colorConstants.dart';
import 'package:telugu_mahasabha_web/widgets/footer/footer_desktop.dart';
import 'package:telugu_mahasabha_web/widgets/home_view_body/desktop_home_view_body.dart';

import 'package:telugu_mahasabha_web/widgets/navigation_bar/nav_bar_desktop.dart';

class HomeViewDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundClr,
      floatingActionButton: SizedBox(
        height: 200,
        width: 150,
        child: Image.asset(
          'assets/images/telugu_mata_new.png',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: ListView(
          children: [
            NavigationBarDesktop(),
            DesktopHomeViewBody(),
            FooterDesktop(),
          ],
        ),
      ),
    );
  }
}
