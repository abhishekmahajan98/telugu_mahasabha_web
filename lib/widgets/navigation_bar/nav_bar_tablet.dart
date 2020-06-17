import 'package:flutter/material.dart';

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
            color: Color.fromARGB(255, 128, 0, 0),
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
                        fontSize: screenHeight / 30,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'RASHTRETARA TELUGU SAMAKHYA',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: screenHeight / 40,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: screenHeight / 10,
                      width: screenWidth / 10,
                      child: Image.asset('assets/images/logo.jpg'),
                    ),
                    Text(
                      'soc.regn.no.679/2015',
                      style: TextStyle(
                        fontSize: screenWidth / 80,
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
