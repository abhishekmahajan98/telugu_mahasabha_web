import 'package:flutter/material.dart';
//import 'package:marquee_widget/marquee_widget.dart';
import 'package:telugu_mahasabha_web/constants/colorConstants.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:marquee/marquee.dart';
import 'package:firebase_core/firebase_core.dart';



class TestPage extends StatelessWidget {
  var fsconnect = FirebaseFirestore.instance;


  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return  Card(
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
                  //color: Color(0xffa62627),

                  child: StreamBuilder(
                    stream: fsconnect
                        .collection('Marquee')
                        .doc('Text')
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        return Marquee(
                          text:
                          'This is the official RTS Website',
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

                      }
                      final marque_text = snapshot.data['data'];
                      return Marquee(
                        text:marque_text,
                        style: TextStyle(
                            color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600
                        ),

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
                  ))])));
  }
}


