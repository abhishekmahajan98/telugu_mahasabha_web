import 'package:carousel_pro/carousel_pro.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class PhotoCarouselTest extends StatefulWidget {
  final double carouselHeight;

  const PhotoCarouselTest({Key key, this.carouselHeight}) : super(key: key);
  @override
  _PhotoCarouselTestState createState() => _PhotoCarouselTestState();
}

class _PhotoCarouselTestState extends State<PhotoCarouselTest> {
  var fsconnect = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Card(
      color: Colors.transparent,
      child: Container(
        height: widget.carouselHeight == null
            ? screenHeight * 0.65
            : widget.carouselHeight,
        //color: Color.fromARGB(255, 0, 0, 255),
        child: StreamBuilder(
          stream:
          fsconnect.collection('Carousel').snapshots(),
          //builder: (context, snapshot){
          builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
            if (!snapshot.hasData) {
              return Container(
                child: Image.network('https://firebasestorage.googleapis.com/v0/b/rts-web-dfa05.appspot.com/o/RTS%20LOGO%2Frts%20logo%20transaparent.png?alt=media&token=ffa98b01-001a-4c7b-9049-245c1aa94b13'),
              );
            }

            List carouselItems = snapshot.data.docs.map((document) {
              return Image.network(document['url']);
            }).toList();

            return Carousel(
              boxFit: BoxFit.contain,
              images: carouselItems,
              dotSize: 6.0,
              dotSpacing: 15.0,
              dotColor: Color.fromARGB(255, 128, 0, 0),
              indicatorBgPadding: 5.0,
              dotBgColor: Colors.blue,
              borderRadius: true,
              noRadiusForIndicator: true,
              animationDuration: Duration(milliseconds: 1000),
              //autoplay: false,


              //overlayShadow: true,
              //overlayShadowColors: Colors.white,
              //overlayShadowSize: 0.7,
            );
          },
        ),
      ),
    );
  }
}
