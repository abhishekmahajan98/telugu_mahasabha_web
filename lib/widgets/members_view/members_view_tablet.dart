import 'package:flutter/material.dart';
import 'package:telugu_mahasabha_web/constants/colorConstants.dart';
import 'package:telugu_mahasabha_web/widgets/footer/footer_tablet.dart';
import 'package:telugu_mahasabha_web/widgets/members_view_sub_pages/members_view_main.dart';
import 'package:telugu_mahasabha_web/widgets/navigation_bar/nav_bar_tablet.dart';
import 'package:telugu_mahasabha_web/widgets/side_drawer/drawer_tablet.dart';
class MembersViewTablet extends StatefulWidget {
  @override
  _MembersViewTabletState createState() => _MembersViewTabletState();
}

class _MembersViewTabletState extends State<MembersViewTablet> {
  int _selectedPage = 0;
  int regImageIndex = 0;
  int constitutionImageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    List<Widget> subpages = [
      MembersViewMain(
        screenWidth: screenWidth,
      ),
    ];
    List<String> subpageName = [
      'Executive Members',

    ];
    return Scaffold(
      backgroundColor: backgroundClr,
      drawer: SideDrawerTablet(),
      body: Container(
        decoration: BoxDecoration(
          image: new DecorationImage(
            image: new AssetImage('assets/images/backgroundimage.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: ListView(
          children: [
            NavigationBarTablet(
              screenHeight: screenHeight,
              screenWidth: screenWidth,
            ),
            Card(
              color: buttonbarClr,
              child: ExpansionTile(
                // /backgroundColor: buttonbarClr,
                title: Center(
                  child: Text(
                    subpageName[_selectedPage],
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                children: [
                  ListTile(
                    onTap: () {
                      setState(() {
                        _selectedPage = 0;
                      });
                    },
                    leading: Text(
                      subpageName[0],
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: subpages[_selectedPage],
            ),
            FooterTablet(),
          ],
        ),
      ),
    );
  }
}
