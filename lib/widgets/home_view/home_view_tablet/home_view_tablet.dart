import 'package:flutter/material.dart';
import 'package:telugu_mahasabha_web/constants/colorConstants.dart';
import 'package:telugu_mahasabha_web/widgets/Footer/footer.dart';
import 'package:telugu_mahasabha_web/widgets/Footer/footer_tablet.dart';
import 'package:telugu_mahasabha_web/widgets/navigation_bar/nav_bar_tablet.dart';
import 'package:telugu_mahasabha_web/widgets/new_events/new_events.dart';
import 'package:telugu_mahasabha_web/widgets/photo_carousel/photo_carousel.dart';
import 'package:telugu_mahasabha_web/widgets/side_drawer/drawer_tablet.dart';
import 'package:telugu_mahasabha_web/widgets/updates_box/updates_box_tablet.dart';

class HomeViewTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: backgroundClr,
      drawer: SideDrawerTablet(),
      body: ListView(
        children: [
          NavigationBarTablet(
            screenHeight: screenHeight,
            screenWidth: screenWidth,
          ),
          NewEvents(),
          PhotoCarousel(
            carouselHeight: screenHeight * 0.4,
          ),
          UpdatesBoxTablet(),
          FooterTablet(),
        ],
      ),
    );
  }
}
