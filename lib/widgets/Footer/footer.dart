import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:telugu_mahasabha_web/constants/footerConstants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return  Card(
      child:Column(
        children: [
          Container(
            height: screenHeight/3,
            child:Row(
              children: [
                Expanded(flex: 1,
                 child: Container(
                  color: Colors.black87,
                ),),
                Expanded(
                    flex: 1,
                    child:Container(
                    color: Colors.black87,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(45,0, 0, 0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Correspondence \nAddress:",
                          style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        )
                            ),
                            Text("12,RATRANI BUNGLOW, \n OPP TO SAIBABA MANDIR, \n RAMDEVNAGAR,SATELLITE \n AHMEDABAD,GUJRAT \n 380015" ,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14
                            ),
                            ),
                            Text("Office Address:",
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                )
                            ),
                            Text(" PLOT NO.2-4-713, ROAD NO.5A,\n NEW NAGOLE COlONY,\n MOHAN NAGAR, KOTHAPET,\n HYDERABAD-500035",

                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14
                              ),
                            )
                          ],
                        ),
                      ),
                )
             ),
                Expanded(
                    flex: 1,
                    child:Container(
                      color: Colors.black87,
                        child: Padding(
                         padding: const EdgeInsets.fromLTRB(0,50, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("Usefull Links:",
                              style:TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,

                              ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text("About us",
                                style: linksClr,
                              ),
                              Text("Members",
                                style: linksClr,
                              ),
                              Text("Photos",
                                style: linksClr,
                              ),
                              Text("Co Association Activities",
                                style: linksClr,
                              ),
                              Text("Meetings",
                                style: linksClr,
                              ),
                            ],
                        )
                    )
             )
                ),
                Expanded(
                    flex: 1,
                   
                  child:Container(
                  color: Colors.black87,
                    child: Padding(
                    padding: const EdgeInsets.fromLTRB(0,50, 0, 0),
                      child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Reach Us :',
                          style: TextStyle( color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                          ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.nature,//facebook
                                color: Colors.blue,
                                size: 50
                              ),
                              Icon(
                                  Icons.nature,//youtube
                                  color: Colors.blue,
                                  size: 50
                              )
                            ],
                          ),
                       SizedBox(
                         height: 20,
                       ),
                          Text('Ph no : 9825114404',
                            style: TextStyle( color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          Text('E-mail: rashtretaratelugusamakhya@gmail.com',
                            style: TextStyle( color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          
                        ]
                      )
                    )
                  ),
                ),
                Expanded(flex: 1,
                  child: Container(
                    color: Colors.black87,
                  ),),
                ]
                )
               )
              ]
            ) ,
          );
  }
}
