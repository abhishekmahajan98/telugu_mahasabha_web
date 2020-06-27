import 'package:flutter/material.dart';
import 'package:telugu_mahasabha_web/constants/colorConstants.dart';

class NavigationBarTablet extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;

  const NavigationBarTablet(
      {Key key, @required this.screenHeight, @required this.screenWidth})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
        image: new DecorationImage(
        image: new AssetImage('assets/images/navBarBackground.jpg'),
         fit: BoxFit.fill,
         ),
        ),
        //color: navbarClr,
    height: screenHeight / 8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(
                Icons.menu,
                size: screenHeight / 25,
                color: Colors.white,
              ),
              onPressed: () {
                print('drawer open!');
                Scaffold.of(context).openDrawer();
              },
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'రాష్ట్రేతర తెలుగు సమాఖ్య',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: screenHeight / 40,
                    color: Color.fromARGB(255, 0, 0, 128),
                  ),
                ),
                Text(
                  'RASHTRETARA TELUGU SAMAKHYA',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: screenHeight / 50,
                    color: Color.fromARGB(255, 0, 0, 128),
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/newlogo.png',
                  scale: 2,
                ),
                Text(
                  'soc.regn.no.679/2015',
                  style: TextStyle(
                    fontSize: screenWidth / 50,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
