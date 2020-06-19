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
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: navbarClr,
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
                  onPressed: () => Scaffold.of(context).openDrawer(),
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
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'RASHTRETARA TELUGU SAMAKHYA',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: screenHeight / 50,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/logo.jpg',
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
        ],
      ),
    );
  }
}
