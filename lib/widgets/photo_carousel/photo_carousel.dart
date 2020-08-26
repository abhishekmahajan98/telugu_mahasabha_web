import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class PhotoCarousel extends StatefulWidget {
  final double carouselHeight;

  const PhotoCarousel({Key key, this.carouselHeight}) : super(key: key);

  @override
  _PhotoCarouselState createState() => _PhotoCarouselState();
}

class _PhotoCarouselState extends State<PhotoCarousel> {
  final List<AssetImage> imgs = [
    //AssetImage('assets/images/home_carousel/5july.jpeg'),
    //AssetImage('assets/images/home_carousel/1.png'),
    //AssetImage('assets/images/home_carousel/2.png'),
    //AssetImage('assets/images/home_carousel/3.jpg'),
  // AssetImage('assets/images/home_carousel/4.jpg'),
   // AssetImage('assets/images/home_carousel/5.jpg'),
   // AssetImage('assets/images/home_carousel/6.jpg'),
   // AssetImage('assets/images/home_carousel/7.jpg'),
    //AssetImage('assets/images/home_carousel/8.jpg'),
  // AssetImage('assets/images/home_carousel/9.jpg'),
  //  AssetImage('assets/images/home_carousel/10.jpg'),
   // AssetImage('assets/images/home_carousel/12.jpg'),
    AssetImage('assets/images/home_carousel/TBP.png'),
    AssetImage('assets/images/home_carousel/TBP1.jpg'),
    AssetImage('assets/images/home_carousel/TBP2.png'),
    AssetImage('assets/images/home_carousel/TBP3.png'),
    AssetImage('assets/images/home_carousel/TBP4.png'),
    AssetImage('assets/images/home_carousel/TBP5.png'),
    AssetImage('assets/images/home_carousel/TBP6.png'),
    AssetImage('assets/images/home_carousel/TBP7.png'),
    AssetImage('assets/images/home_carousel/TBP8.png'),
    AssetImage('assets/images/home_carousel/TBP9.png'),
    AssetImage('assets/images/home_carousel/TBP10.png'),



  ];

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
        child: Carousel(
          boxFit: BoxFit.contain,
          images: imgs,
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
        ),
      ),
    );
  }
}
