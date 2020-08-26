import 'package:flutter/material.dart';
import 'package:telugu_mahasabha_web/constants/navbar_constants.dart';
import 'package:telugu_mahasabha_web/constants/temp.dart';

class AboutViewMain extends StatelessWidget {
  final bool isMobile;
  final bool showTitle;
  const AboutViewMain({Key key, this.isMobile=false, this.showTitle})
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
            fontSize: isMobile  ? 18 : 20,
          ),
        ),
        SizedBox(height:  isMobile  ? 18 :50,),
      ],
    );
  }
}
