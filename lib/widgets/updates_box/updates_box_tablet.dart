import 'package:flutter/material.dart';
import 'package:telugu_mahasabha_web/constants/colorConstants.dart';
import 'package:telugu_mahasabha_web/widgets/updates_box/updates_box.dart';

class UpdatesBoxTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Card(
      child: Container(
        height: screenHeight / 2,
        width: screenWidth * 0.9,
        color: updatesClr,
        //color: Color.fromARGB(255, 	2, 100, 64),
        child: UpdatesBox(
          screenHeight: screenHeight,
          screenWidth: screenWidth,
        ),
      ),
    );
  }
}
