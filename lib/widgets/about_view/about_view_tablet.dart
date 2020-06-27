import 'package:flutter/material.dart';
import 'package:telugu_mahasabha_web/constants/colorConstants.dart';
import 'package:telugu_mahasabha_web/constants/photo_lists.dart';
import 'package:telugu_mahasabha_web/widgets/about_view_sub_pages/about_view_main.dart';
import 'package:telugu_mahasabha_web/widgets/about_view_sub_pages/custom_photo_view.dart';
import 'package:telugu_mahasabha_web/widgets/navigation_bar/nav_bar_tablet.dart';
import 'package:telugu_mahasabha_web/widgets/side_drawer/drawer_tablet.dart';

class AboutViewTablet extends StatefulWidget {
  @override
  _AboutViewTabletState createState() => _AboutViewTabletState();
}

class _AboutViewTabletState extends State<AboutViewTablet> {
  int _selectedPage = 0;
  int regImageIndex = 0;
  int constitutionImageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    List<Widget> subpages = [
      AboutViewMain(
        screenWidth: screenWidth,
      ),
      CustomPhotoView(
        isMobile: true,
        photosUrl: regpics,
        title: 'Registration',
        selectedPic: regImageIndex,
        onDownloadButtonPress: () {},
        onTapForwardButton: () {
          if (regImageIndex < regpics.length - 1) {
            setState(() {
              regImageIndex = regImageIndex + 1;
            });
          } else {
            setState(() {
              regImageIndex = 0;
            });
          }
        },
        onTapBackwardButton: () {
          if (regImageIndex != 0) {
            setState(() {
              regImageIndex = regImageIndex - 1;
            });
          } else {
            setState(() {
              regImageIndex = regpics.length - 1;
            });
          }
        },
      ),
      CustomPhotoView(
        isMobile: true,
        photosUrl: constitutionpics,
        title: 'Constitution',
        selectedPic: constitutionImageIndex,
        onDownloadButtonPress: () {},
        onTapForwardButton: () {
          if (constitutionImageIndex < constitutionpics.length - 1) {
            setState(() {
              constitutionImageIndex = constitutionImageIndex + 1;
            });
          } else {
            setState(() {
              constitutionImageIndex = 0;
            });
          }
        },
        onTapBackwardButton: () {
          if (constitutionImageIndex != 0) {
            setState(() {
              constitutionImageIndex = constitutionImageIndex - 1;
            });
          } else {
            setState(() {
              constitutionImageIndex = constitutionpics.length - 1;
            });
          }
        },
      ),
    ];
    List<String> subpageName = [
      'About Us',
      'Registration',
      'Constitution',
    ];

    return Scaffold(
      backgroundColor: backgroundClr,
      drawer: SideDrawerTablet(),
      body: ListView(
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
                ListTile(
                  onTap: () {
                    setState(() {
                      _selectedPage = 1;
                    });
                  },
                  leading: Text(
                    subpageName[1],
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                ListTile(
                  onTap: () {
                    setState(() {
                      _selectedPage = 2;
                    });
                  },
                  leading: Text(
                    subpageName[2],
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
        ],
      ),
    );
  }
}
