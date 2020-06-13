import 'package:flutter/material.dart';

class PhotoCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 410,
        color: Color.fromARGB(255, 0, 0, 255),
        child: Center(
          child: Text(
            'PHOTO CAROUSEL',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
