import 'package:flutter/material.dart';
import 'package:telugu_mahasabha_web/constants/navbar_constants.dart';
import 'package:telugu_mahasabha_web/constants/temp.dart';

class AboutViewMain extends StatelessWidget {
  final double screenWidth;
  final bool showTitle;
  const AboutViewMain({Key key, this.screenWidth, this.showTitle})
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
          abtText,
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
