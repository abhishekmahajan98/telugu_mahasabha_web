import 'package:flutter/material.dart';
import 'package:telugu_mahasabha_web/constants/updates_list.dart';

class UpdatesBox extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;

  const UpdatesBox(
      {Key key, @required this.screenHeight, @required this.screenWidth})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            'Updates',
            style: TextStyle(
              color: Colors.red,
              fontWeight: FontWeight.bold,
              fontSize: 28,
            ),
          ),
        ),
        SizedBox(height: screenHeight / 150),
        Flexible(
          child: ListView.builder(
            itemCount: updates.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(
                  Icons.radio_button_checked,
                  color: Colors.red,
                ),
                title: Text(
                  updates[index] + '\n',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
