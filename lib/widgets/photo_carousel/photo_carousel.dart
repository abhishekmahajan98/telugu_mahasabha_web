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
    AssetImage('assets/images/home_carousel/a.jpg'),
    AssetImage('assets/images/home_carousel/b.jpg'),
    // AssetImage('assets/images/home_carousel/c.jpg'),
    AssetImage('assets/images/home_carousel/d.jpg'),
    //AssetImage('assets/images/home_carousel/e.jpg'),
    //AssetImage('assets/images/home_carousel/f.jpg'),
    //AssetImage('assets/images/home_carousel/g.jpg'),
    AssetImage('assets/images/home_carousel/first.png'),
    AssetImage('assets/images/home_carousel/a1.png'),
    AssetImage('assets/images/home_carousel/a2.png'),
    AssetImage('assets/images/home_carousel/a3.png'),
    AssetImage('assets/images/home_carousel/a4.png'),
    AssetImage('assets/images/home_carousel/a5.png'),
    AssetImage('assets/images/home_carousel/a6.png'),
    AssetImage('assets/images/home_carousel/a7.png'),
    AssetImage('assets/images/home_carousel/a8.png'),
    AssetImage('assets/images/home_carousel/a9.png'),
    AssetImage('assets/images/home_carousel/h.jpg'),
    AssetImage('assets/images/home_carousel/i.jpg'),
    AssetImage('assets/images/home_carousel/j.jpg'),
    AssetImage('assets/images/home_carousel/k.jpg'),
    AssetImage('assets/images/home_carousel/l.jpg'),
    AssetImage('assets/images/home_carousel/m.jpg'),
    AssetImage('assets/images/home_carousel/n.jpg'),
    AssetImage('assets/images/home_carousel/o.jpg'),
    AssetImage('assets/images/home_carousel/p.jpg'),
    AssetImage('assets/images/home_carousel/q.jpg'),
    AssetImage('assets/images/home_carousel/r.jpg'),
    AssetImage('assets/images/home_carousel/s.jpg'),
    AssetImage('assets/images/home_carousel/1.jpg'),
    AssetImage('assets/images/home_carousel/2.jpg'),
    AssetImage('assets/images/home_carousel/3.jpg'),
    //AssetImage('assets/images/home_carousel/4.jpg'),
    //AssetImage('assets/images/home_carousel/5.jpg'),
    //AssetImage('assets/images/home_carousel/6.jpg'),
    //AssetImage('assets/images/home_carousel/7.jpg'),
    //AssetImage('assets/images/home_carousel/8.jpg'),
    //AssetImage('assets/images/home_carousel/9.jpg'),
    //AssetImage('assets/images/home_carousel/10.jpg'),
    AssetImage('assets/images/home_carousel/12.jpg'),
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
          boxFit: BoxFit.fill,
          images: imgs,
          dotSize: 6.0,
          dotSpacing: 15.0,
          dotColor: Color.fromARGB(255, 128, 0, 0),
          indicatorBgPadding: 5.0,
          dotBgColor: Colors.transparent,
          borderRadius: true,
          noRadiusForIndicator: true,
            animationDuration: Duration(milliseconds: 1000)
          //overlayShadow: true,
          //overlayShadowColors: Colors.white,
          //overlayShadowSize: 0.7,
        ),
      ),
    );
  }
}
