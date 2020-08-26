import 'package:flutter/material.dart';
import 'package:telugu_mahasabha_web/constants/colorConstants.dart';
import 'package:telugu_mahasabha_web/widgets/Rts_members_view/associate_members.dart';
import 'package:telugu_mahasabha_web/widgets/Rts_members_view/association_members.dart';
import 'package:telugu_mahasabha_web/widgets/Rts_members_view/life_members.dart';
import 'package:telugu_mahasabha_web/widgets/Rts_members_view/patron_association.dart';
import 'package:telugu_mahasabha_web/widgets/Rts_members_view/patron_members.dart';
import 'package:telugu_mahasabha_web/widgets/footer/footer_desktop.dart';
import 'package:telugu_mahasabha_web/widgets/members_view_sub_pages/members_view_main.dart';

import 'package:telugu_mahasabha_web/widgets/navigation_bar/nav_bar_desktop.dart';

class MembersViewDesktop extends StatefulWidget {
  @override
  _MembersViewDesktopState createState() => _MembersViewDesktopState();
}

class _MembersViewDesktopState extends State<MembersViewDesktop> {
  @override

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
      final double screenHeight = MediaQuery
          .of(context)
          .size
          .height;
      final double screenWidth = MediaQuery
          .of(context)
          .size
          .width;
      List<Widget> subpages = [
        /*MembersViewMain(
          screenWidth: screenWidth,
        ),*/
      PatronAssociation(

        ),
        AssociationsMembers(

        ),
        PatronMembers(
          screenWidth: screenWidth,
        ),
        LifeMembers(
          screenWidth: screenWidth,
        ),
        AssociateMembers(
          screenWidth: screenWidth,
        )
      ];
      return Scaffold(
        backgroundColor: backgroundClr,
        body: Container(
          decoration: BoxDecoration(
            image: new DecorationImage(
              image: new AssetImage('assets/images/backgroundimage.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          child: Padding(
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
                        width: screenWidth / 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Container(
                              color: Color.fromARGB(255, 253, 184, 57),
                              height: screenHeight / 10,
                              alignment: Alignment.center,
                              child: Text(
                                'Members',
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
                                  'PATRON ASSOCIATION MEMBERS',
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
                                  'ASSOCIATION MEMBERSHIP',
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
                                  'PATRON MEMBERSHIP',
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
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _subPageSelected = 3;
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.fromLTRB(15, 5, 5, 0),
                                child: Text(
                                  'LIFE MEMBERSHIP',
                                  style: TextStyle(
                                    fontSize: screenWidth / 90,
                                    color: _subPageSelected == 3
                                        ? Color.fromARGB(255, 0, 0, 128)
                                        : Colors.black,
                                    fontWeight: _subPageSelected == 3
                                        ? FontWeight.bold
                                        : FontWeight.normal,
                                  ),
                                ),
                              ),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  _subPageSelected = 4;
                                });
                              },
                              child: Container(
                                padding: EdgeInsets.fromLTRB(15, 5, 5, 0),
                                child: Text(
                                  'ASSOCIATE  MEMBERSHIP',
                                  style: TextStyle(
                                    fontSize: screenWidth / 90,
                                    color: _subPageSelected == 4
                                        ? Color.fromARGB(255, 0, 0, 128)
                                        : Colors.black,
                                    fontWeight: _subPageSelected == 4
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
                FooterDesktop(),
              ],
            ),
          ),
        ),
      );

  }
}