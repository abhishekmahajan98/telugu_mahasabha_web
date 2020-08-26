import 'package:flutter/material.dart';
import 'package:telugu_mahasabha_web/constants/memberslist.dart';
import 'package:telugu_mahasabha_web/constants/navbar_constants.dart';
import 'package:telugu_mahasabha_web/constants/rts_members.dart';

class PatronAssociation extends StatelessWidget {
  final bool isMobile;
  final bool showTitle;
  const PatronAssociation({Key key, this.isMobile=false, this.showTitle})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        showTitle == true
            ? Text(
          'PATRON ASSOCIATION MEMBERSHIP',
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
                child: SelectableText('Logo',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      //fontSize: screenWidth == null ? screenWidth / 30 : 18,
                      color: Color.fromARGB(255, 0, 0, 128),
                    fontSize:isMobile?16:24,
                  ),
                  enableInteractiveSelection: true,
                )
            )
            ),
            DataColumn(label: Container(
                width: MediaQuery.of(context).size.width/6,
                child: SelectableText('Association ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      //fontSize: screenWidth == null ? screenWidth / 30 : 18,
                      color: Color.fromARGB(255, 0, 0, 128),
                    fontSize:isMobile?16:24,
                  ),
                )
            )
            ),
            DataColumn(label: Container(
                width: MediaQuery.of(context).size.width/5,
                child: SelectableText('State',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      //fontSize: screenWidth == null ? screenWidth / 30 : 18,
                      color: Color.fromARGB(255, 0, 0, 128),
                    fontSize:isMobile?16:24,
                  ),
                )
            )
            ),

          ],
          rows:
          listOfpatronAssociations.map(
            ((element) => DataRow(
              cells: <DataCell>[
                DataCell(
                    Image.network(element["Logo"])

                ) ,//Extracting from Map element the value
                DataCell(SelectableText(element["Associations"],
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                      color: Colors.redAccent,
                      fontSize:isMobile?16:24,
                    )
                )),
                DataCell(SelectableText(element["State"],
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                      color: Color(0xff58b048),
                      fontSize:isMobile?16:24,

                    )
                )),




              ],
            )),
          )
              .toList(),
        ),

        SizedBox(height:MediaQuery.of(context).size.height/3),
      ],
    );
  }
}
