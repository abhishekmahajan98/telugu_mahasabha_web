import 'package:flutter/material.dart';

class UpdatesBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 500,
        width: 400,
        //color: Color(0xff2c2f36),
        color: Colors.blueGrey[900],
        child: Center(
          child: Text(
            'UPDATES',
            style: TextStyle(
              fontSize: 20,
              color: Colors.red,
              //color: Color.fromARGB(255, 128, 0, 0),
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
