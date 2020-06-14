import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';

class PhotoCarousel extends StatelessWidget {
  final List<AssetImage> imgs = [
    AssetImage('assets/images/home_carousel/1.jpg'),
    AssetImage('assets/images/home_carousel/2.jpg'),
    AssetImage('assets/images/home_carousel/3.jpg'),
    AssetImage('assets/images/home_carousel/4.jpg'),
    AssetImage('assets/images/home_carousel/5.jpg'),
    AssetImage('assets/images/home_carousel/6.jpg'),
    AssetImage('assets/images/home_carousel/7.jpg'),
    AssetImage('assets/images/home_carousel/8.jpg'),
    AssetImage('assets/images/home_carousel/9.jpg'),
    AssetImage('assets/images/home_carousel/10.jpg'),
    AssetImage('assets/images/home_carousel/12.jpg'),
  ];
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      child: Container(
        height: 470,
        //color: Color.fromARGB(255, 0, 0, 255),
        child: Carousel(
          boxFit: BoxFit.cover,
          images: imgs,
          dotSize: 4.0,
          dotSpacing: 15.0,
          dotColor: Color.fromARGB(255, 128, 0, 0),
          indicatorBgPadding: 5.0,
          dotBgColor: Colors.transparent,
          borderRadius: true,
          noRadiusForIndicator: true,
          //overlayShadow: true,
          //overlayShadowColors: Colors.white,
          //overlayShadowSize: 0.7,
        ),
      ),
    );
  }
}
