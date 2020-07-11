import 'package:flutter/material.dart';
import 'package:marquee_widget/marquee_widget.dart';
import 'package:telugu_mahasabha_web/constants/colorConstants.dart';

class NewEvents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Card(
      child: Container(
        height: screenHeight / 10,
        color: neweventsClr,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              alignment: Alignment.centerLeft,
              height: screenHeight / 10,
              width: screenWidth / 7,
              child: Image.asset(
                'assets/images/latest_events.png',
              ),
            ),
            Expanded(
              child: Marquee(
                child: Text(
                  'Second Part of 5th Annual celebrations International Kavi Sammelanam will be held virtually on  5th July 2020 from 9:15 am to 6 pm.',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                //scrollAxis: Axis.horizontal,
                textDirection: TextDirection.ltr,
                animationDuration: Duration(seconds: 10),
                //backDuration: Duration(milliseconds: 5000),
                //pauseDuration: Duration(milliseconds: 2500),
                directionMarguee: DirectionMarguee.oneDirection,
              ),
            )
          ],
        ),
      ),
    );
  }
}
