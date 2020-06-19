import 'package:flutter/material.dart';
import 'package:telugu_mahasabha_web/constants/colorConstants.dart';
import 'package:telugu_mahasabha_web/widgets/updates_box/updates_box.dart';

class UpdatesBoxDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Card(
      child: Container(
        height: screenHeight * 0.76,
        width: screenWidth * 0.25,
        //color: Color(0xff2c2f36),
        color: updatesClr,
        //color: Color.fromARGB(255, 	2, 100, 64),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: UpdatesBox(
            screenHeight: screenHeight,
            screenWidth: screenWidth,
          ),
        ),
      ),
    );
  }
}
