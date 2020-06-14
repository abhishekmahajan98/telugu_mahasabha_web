import 'package:flutter/material.dart';
import 'package:telugu_mahasabha_web/constants/updates_list.dart';

class UpdatesBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 560,
        width: 400,
        //color: Color(0xff2c2f36),
        color: Colors.blueGrey[900],
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
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
              SizedBox(height: 10),
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
                          color: Colors.lightBlue,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
