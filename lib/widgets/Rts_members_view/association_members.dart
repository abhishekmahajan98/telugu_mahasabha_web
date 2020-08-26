import 'package:flutter/material.dart';
import 'package:telugu_mahasabha_web/constants/memberslist.dart';
import 'package:telugu_mahasabha_web/constants/navbar_constants.dart';
import 'package:telugu_mahasabha_web/constants/rts_members.dart';

class AssociationsMembers extends StatelessWidget {
  final bool isMobile;
  final bool showTitle;
  const AssociationsMembers({Key key, this.isMobile=false, this.showTitle})
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

       DataTable(
          dataRowHeight: MediaQuery.of(context).size.height/11,
          headingRowHeight: MediaQuery.of(context).size.height/13,

          columns: [
            DataColumn(label: Container(
                width: MediaQuery.of(context).size.width/8,
                child: SelectableText('Logo',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: isMobile?16:24,
                      color: Color.fromARGB(255, 0, 0, 128),
                      //fontSize: screenWidth/80
                  ),
                  enableInteractiveSelection: true,

                )
            )
            ),

            DataColumn(label: Container(
               width: MediaQuery.of(context).size.width/5,
                child: Text('Association ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                    fontSize:isMobile?16:24,
                      color: Color.fromARGB(255, 0, 0, 128),
                      //fontSize: screenWidth/80
                  ),
                )
            )
            ),
            DataColumn(label: Container(
                width: MediaQuery.of(context).size.width/5,
                child: Text('State',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                    fontSize: isMobile?16:24,
                      color: Color.fromARGB(255, 0, 0, 128),
                      //fontSize: screenWidth/80
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
                    backgroundColor: Color(0xff51d6ed),
                    child: Image.network(element["Logo"])
                )


                ),
                DataCell(
                    Text(element["Association"],
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                          color: Colors.redAccent,
                          fontSize: isMobile?15:24,

                        )
                    )
                ), //Extracting from Map element the value
                DataCell(Text(element["State"],
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                      color: Color(0xff58b048),
                      fontSize: isMobile?15:24,
                ),),
                )
              ],

            )),
          )
              .toList(),
        ),
        SizedBox(height:isMobile?16:50),
      ],
    );
  }
}
