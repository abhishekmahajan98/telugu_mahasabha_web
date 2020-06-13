import 'package:flutter/material.dart';
import 'package:marquee_widget/marquee_widget.dart';

class NewEvents extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 80,
        color: Color.fromARGB(255, 255, 244, 198),
        child: Row(
          children: [
            Image.asset('assets/images/latest_events.png'),
            /*Container(
              width: 100,
              child: Marquee(
                text:
                    '5th Annual celebrations on 28th June 2020 virtually from 9AM.',
              ),
            )*/
            Expanded(
              child: Marquee(
                child: Text(
                  '5th Annual celebrations on 28th June 2020 virtually from 9AM.',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                ),
                //scrollAxis: Axis.horizontal,
                textDirection: TextDirection.ltr,
                //animationDuration: Duration(seconds: 1),
                backDuration: Duration(milliseconds: 5000),
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
