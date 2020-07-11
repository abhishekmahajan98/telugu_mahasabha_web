import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:telugu_mahasabha_web/widgets/button_nav/button_nav_button.dart';

class FooterDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Card(
      color: Colors.black87,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    //isThreeLine: true,
                    title: Text(
                      'Correspondence Address',
                      style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w600,
                        fontSize: screenWidth / 60,
                      ),
                    ),
                    subtitle: Text(
                      '12 RATRANI BUNGLOW,\nOPP TO SAIBABA MANDIR\nRAMDEVNAGAR SATTELITE,\nAHMEDABAD,GUJARAT-380015',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenWidth / 120,
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
                        fontSize: screenWidth / 60,
                      ),
                    ),
                    subtitle: Text(
                      'PLOT NO.2-4-713, ROAD NO.5A,\nNEW NAGOLE COLONY,\nMOHAN NAGAR, KOTHAPET,\nHYDERABAD-500035',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenWidth / 120,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
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
                      fontSize: screenWidth / 60,
                    ),
                  ),
                ),
                ButtonNavElement(
                  title: 'Home',
                  fontSize: screenWidth / 100,
                  onTap: () {
                    Navigator.pushNamed(context, '/');
                  },
                ),
                ButtonNavElement(
                  title: 'About us',
                  fontSize: screenWidth / 100,
                  onTap: () {
                    Navigator.pushNamed(context, '/about');
                  },
                ),
                ButtonNavElement(
                  title: 'RTS Events',
                  fontSize: screenWidth / 100,
                  onTap: () {},
                ),
                ButtonNavElement(
                  title: 'Zonal Activities',
                  fontSize: screenWidth / 100,
                  onTap: () {},
                ),
                ButtonNavElement(
                  title: 'Meetings',
                  fontSize: screenWidth / 100,
                  onTap: () {},
                ),
              ],
            ),
          ),
          Expanded(
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
                      fontSize: screenWidth / 60,
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
                    'Ph no: 9825114404\n\nE-mail: rashtretaratelugusamakhya@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
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
