import 'package:flutter/material.dart';
//import 'package:marquee_widget/marquee_widget.dart';
import 'package:telugu_mahasabha_web/constants/colorConstants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:marquee/marquee.dart';

final _firestore = Firestore.instance;
class NewEventsTest extends StatefulWidget {
  @override
  _NewEventsTestState createState() => _NewEventsTestState();
}

class _NewEventsTestState extends State<NewEventsTest> {


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
            Container(
                height: MediaQuery.of(context).size.height / 12,
                width: MediaQuery.of(context).size.width,
                color: Color(0xffa62627),
                alignment: Alignment.center,
                child: StreamBuilder(
                  stream: _firestore
                      .collection('updates')
                      .document('Upcoming events')
                      .snapshots(),
                  builder: (context, snapshot) {

                    final marque_text = snapshot.data['text'];
                    print(snapshot.data['text']);
                    return Marquee(
                      text: marque_text,
                      scrollAxis: Axis.horizontal,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      blankSpace: 20.0,
                      velocity: 75.0,
                      //pauseAfterRound: Duration(seconds: 1),
                      startPadding: 20.0,
                      //accelerationDuration: Duration(seconds: 1),
                      //accelerationCurve: Curves.linear,
                      //decelerationDuration:Duration(milliseconds: 100),
                      //decelerationCurve: Curves.easeOut,
                    );
                  },
                )),
          ],
        ),
      ),
    );
  }
}
