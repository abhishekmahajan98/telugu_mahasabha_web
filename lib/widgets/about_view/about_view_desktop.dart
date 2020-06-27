import 'package:flutter/material.dart';
import 'package:telugu_mahasabha_web/constants/colorConstants.dart';
import 'package:telugu_mahasabha_web/constants/photo_lists.dart';
import 'package:telugu_mahasabha_web/widgets/about_view_sub_pages/about_view_main.dart';
import 'package:telugu_mahasabha_web/widgets/about_view_sub_pages/custom_photo_view.dart';

import 'package:telugu_mahasabha_web/widgets/navigation_bar/nav_bar_desktop.dart';

class AboutViewDesktop extends StatefulWidget {
  @override
  _AboutViewDesktopState createState() => _AboutViewDesktopState();
}

class _AboutViewDesktopState extends State<AboutViewDesktop> {
  int _subPageSelected = 0;
  int regImageIndex = 0;
  int constitutionImageIndex = 0;
  void changeRegImageIndex(int index) {
    setState(() {
      regImageIndex = index;
    });
  }

  void changeConstitutionImageIndex(int index) {
    setState(() {
      constitutionImageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    List<Widget> subpages = [
      AboutViewMain(
        screenWidth: screenWidth,
        showTitle: true,
      ),
      CustomPhotoView(
        isMobile: false,
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
        //onTapListImage: changeRegImageIndex,
      ),
      CustomPhotoView(
        isMobile: false,
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
        //onTapListImage: changeConstitutionImageIndex,
      ),
    ];
    return Scaffold(
      backgroundColor: backgroundClr,
      body: Padding(
        padding: EdgeInsets.only(top: 10, left: 10, right: 10),
        child: ListView(
          children: [
            NavigationBarDesktop(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Card(
                  child: Container(
                    width: screenWidth / 7,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Container(
                          color: Color.fromARGB(255, 253, 184, 57),
                          height: screenHeight / 10,
                          alignment: Alignment.center,
                          child: Text(
                            'About us',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenWidth / 60,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _subPageSelected = 0;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(15, 5, 5, 0),
                            child: Text(
                              'About Us',
                              style: TextStyle(
                                fontSize: screenWidth / 90,
                                color: _subPageSelected == 0
                                    ? Color.fromARGB(255, 0, 0, 128)
                                    : Colors.black,
                                fontWeight: _subPageSelected == 0
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _subPageSelected = 1;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(15, 5, 5, 0),
                            child: Text(
                              'Registration',
                              style: TextStyle(
                                fontSize: screenWidth / 90,
                                color: _subPageSelected == 1
                                    ? Color.fromARGB(255, 0, 0, 128)
                                    : Colors.black,
                                fontWeight: _subPageSelected == 1
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              _subPageSelected = 2;
                            });
                          },
                          child: Container(
                            padding: EdgeInsets.fromLTRB(15, 5, 5, 0),
                            child: Text(
                              'Constitution',
                              style: TextStyle(
                                fontSize: screenWidth / 90,
                                color: _subPageSelected == 2
                                    ? Color.fromARGB(255, 0, 0, 128)
                                    : Colors.black,
                                fontWeight: _subPageSelected == 2
                                    ? FontWeight.bold
                                    : FontWeight.normal,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: screenHeight / 15,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(screenWidth / 200),
                  width: screenWidth / 2,
                  child: subpages[_subPageSelected],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
