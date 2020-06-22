import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:telugu_mahasabha_web/constants/footerConstants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;

    _launchFacebookUrl() async {
      const url = 'https://www.facebook.com/Rashtretara-Telugu-Samakhya-1768605156757768';
      if (await canLaunch(url)) {
        await launch(url);
      } else {
        throw 'Could not launch $url';
      }
    }
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
                    child:Material(
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
                                fontSize: screenHeight/64
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
                                  fontSize: screenHeight/64
                              ),
                            )
                          ],
                        ),
                      ),
                )
             ),
                Expanded(
                    flex: 1,
                    child:Material(
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
                                fontSize: screenHeight/48,

                              ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Text("About us\n",
                                style: linksClr,
                              ),
                              Text("Members\n",
                                style: linksClr,
                              ),
                              Text("Photos\n",
                                style: linksClr,
                              ),
                              Text("Co Association Activities\n",
                                style: linksClr,
                              ),
                              Text("Meetings\n",
                                style: linksClr,
                              ),
                            ],
                        )
                    )
             )
                ),
                Expanded(
                    flex: 1,
                  child:Material(
                  color: Colors.black87,
                    child: Padding(
                    padding: const EdgeInsets.fromLTRB(0,50, 0, 0),
                      child: Column(
                       mainAxisAlignment: MainAxisAlignment.start,
                       crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Reach Us :',
                          style: TextStyle( color: Colors.red,
                            fontWeight: FontWeight.bold,
                            fontSize: screenHeight/48,
                          ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              IconButton(
                              // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                               icon: FaIcon(FontAwesomeIcons.facebook,
                               color: Colors.white,
                                size: 28,
                               ),
                                  onPressed: _launchFacebookUrl,
                                 ),
                              SizedBox(
                                width: 20,
                              ),
                              IconButton(
                                // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                                  icon: FaIcon(FontAwesomeIcons.youtube,
                                  color: Color.fromARGB(255, 255, 0, 0),
                                    size: 28,),
                                  onPressed: () { print("Pressed"); }
                              ),
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
                          SizedBox(
                            height: 10,
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
