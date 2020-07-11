import 'package:flutter/material.dart';
import 'package:telugu_mahasabha_web/constants/memberslist.dart';
import 'package:telugu_mahasabha_web/constants/navbar_constants.dart';


class MembersViewMain extends StatelessWidget {
  final double screenWidth;
  final bool showTitle;
  const MembersViewMain({Key key, this.screenWidth, this.showTitle})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        showTitle == true
            ? Text(
          'About Us',
          style: navbarTitle,
        )
            : Container(),
        Text(
          memberslist,
          style: TextStyle(
            color: Colors.black,
            fontSize: screenWidth == null ? screenWidth / 30 : 18,
          ),
        ),
        SizedBox(height: screenWidth/5,),
      ],
    );
  }
}
