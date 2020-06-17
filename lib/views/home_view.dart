import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:telugu_mahasabha_web/widgets/home_view/home_view_desktop/home_view_Desktop.dart';
import 'package:telugu_mahasabha_web/widgets/home_view/home_view_tablet/home_view_tablet.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: HomeViewDesktop(),
      mobile: HomeViewTablet(),
    );
  }
}
