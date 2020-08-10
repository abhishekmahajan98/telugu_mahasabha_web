import 'package:flutter/material.dart';
import 'package:telugu_mahasabha_web/constants/memberslist.dart';
import 'package:telugu_mahasabha_web/constants/navbar_constants.dart';
import 'package:telugu_mahasabha_web/constants/rts_members.dart';

class AssociationsMembers extends StatelessWidget {
  final double screenWidth;
  final bool showTitle;
  const AssociationsMembers({Key key, this.screenWidth, this.showTitle})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        showTitle == true
            ? Text(
          'About Us',
          style: navbarTitle,
        )
            : Container(),
        /*Container(
          height: 300,
          width: MediaQuery.of(context).size.width,
          child: Flexible(
            child: ListView.builder(
              itemCount: memberslist.length,
              itemBuilder: (context, index) {
                return Card(
                  child: ListTile(
                    leading: Text(
                      positionlist[index] + '\n',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    title: Text(
                      memberslist[index] + '\n',

                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                    trailing:Text(
                      postholdinglist[index] + '\n',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.black,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),*/
        DataTable(
          dataRowHeight: MediaQuery.of(context).size.height/11,
          headingRowHeight: MediaQuery.of(context).size.height/13,

          columns: [
            DataColumn(label: Container(
                width: MediaQuery.of(context).size.width/8,
                child: Text('Logo',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth == null ? screenWidth / 30 : 18,
                      color: Color.fromARGB(255, 0, 0, 128)
                  ),
                )
            )
            ),

            DataColumn(label: Container(
                width: MediaQuery.of(context).size.width/6,
                child: Text('Association ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth == null ? screenWidth / 30 : 18,
                      color: Color.fromARGB(255, 0, 0, 128)
                  ),
                )
            )
            ),
            DataColumn(label: Container(
                width: MediaQuery.of(context).size.width/5,
                child: Text('State',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth == null ? screenWidth / 30 : 18,
                      color: Color.fromARGB(255, 0, 0, 128)
                  ),
                )
            )
            ),

          ],
          rows:
          listOfAssociationMembers.map(
            ((element) => DataRow(
              cells: <DataCell>[
                DataCell(
                CircleAvatar(
                  radius: 40,

                    backgroundColor: Colors.transparent,
                    child: Image.network(element["Logo"])
                )


                ),
                DataCell(
                    Text(element["Association"],
                        style: TextStyle(
                            fontWeight: FontWeight.bold
                        )
                    )
                ), //Extracting from Map element the value
                DataCell(Text(element["State"],
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    )
                )),
              ],
            )),
          )
              .toList(),
        ),
        SizedBox(height: screenWidth/5,),
      ],
    );
  }
}
