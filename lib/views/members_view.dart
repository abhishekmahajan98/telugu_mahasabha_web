import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:telugu_mahasabha_web/widgets/about_view/about_view_desktop.dart';
import 'package:telugu_mahasabha_web/widgets/members_view/members_view_tablet.dart';
class MembersView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: AboutViewDesktop(),
      mobile: MembersViewTablet(),
    );
  }
}
