import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FooterTablet extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Card(
      color: Colors.black87,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            //height: screenHeight / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  isThreeLine: true,
                  dense: true,
                  title: Text(
                    'Correspondence Address',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth / 25,
                    ),
                  ),
                  subtitle: Text(
                    '12 RATRANI BUNGLOW,\nOPP TO SAIBABA MANDIR\nRAMDEVNAGAR SATTELITE,\nAHMEDABAD,GUJARAT-380015',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth / 40,
                    ),
                  ),
                ),
                ListTile(
                  isThreeLine: true,
                  title: Text(
                    'Office Address',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth / 25,
                    ),
                  ),
                  subtitle: Text(
                    '12 RATRANI BUNGLOW,\nOPP TO SAIBABA MANDIR\nRAMDEVNAGAR SATTELITE,\nAHMEDABAD,GUJARAT-380015',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth / 40,
                    ),
                  ),
                ),
              ],
            ),
          ),

          /*Container(
            //height: screenHeight / 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: Text(
                    'Useful Links',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth / 25,
                    ),
                  ),
                ),
                ButtonNavElement(
                  title: 'Home',
                  fontSize: screenWidth / 40,
                  onTap: () {},
                ),
                ButtonNavElement(
                  title: 'About us',
                  fontSize: screenWidth / 40,
                  onTap: () {
                    Navigator.pushNamed(context, '/about');
                  },
                ),
                ButtonNavElement(
                  title: 'RTS Events',
                  fontSize: screenWidth / 40,
                  onTap: () {},
                ),
                ButtonNavElement(
                  title: 'Zonal Activities',
                  fontSize: screenWidth / 40,
                  onTap: () {},
                ),
                ButtonNavElement(
                  title: 'Meetings',
                  fontSize: screenWidth / 40,
                  onTap: () {},
                ),
              ],
            ),
          ),
          */
          Container(
            //height: screenHeight / 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: Text(
                    'Reach Us',
                    style: TextStyle(
                      color: Colors.red,
                      fontWeight: FontWeight.w600,
                      fontSize: screenWidth / 25,
                    ),
                  ),
                ),
                ListTile(
                  title: Row(
                    children: [
                      IconButton(
                        // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                        icon: FaIcon(
                          FontAwesomeIcons.facebook,
                          color: Colors.white,
                          size: 28,
                        ),
                        onPressed: () {},
                      ),
                      SizedBox(
                        width: screenWidth / 30,
                      ),
                      IconButton(
                        icon: FaIcon(
                          FontAwesomeIcons.youtube,
                          color: Color.fromARGB(255, 255, 0, 0),
                          size: 28,
                        ),
                        onPressed: () {
                          print("Pressed");
                        },
                      ),
                    ],
                  ),
                ),
                ListTile(
                  title: Text(
                    'Ph no: 9825114404',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth / 40,
                    ),
                  ),
                ),
                ListTile(
                  title: Text(
                    'E-mail: rashtretaratelugusamakhya@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth / 40,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
