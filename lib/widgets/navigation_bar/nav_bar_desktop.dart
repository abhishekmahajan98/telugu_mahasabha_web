import 'package:flutter/material.dart';
import 'package:telugu_mahasabha_web/constants/colorConstants.dart';
import 'package:telugu_mahasabha_web/constants/navbar_constants.dart';
import 'package:telugu_mahasabha_web/widgets/button_nav/button_nav.dart';

class NavigationBarDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    final double screenWidth = MediaQuery.of(context).size.width;
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                image: new DecorationImage(
                  image: new AssetImage('assets/images/1.jpg'),
                  fit: BoxFit.fill,
                )
            ),
            //color: navbarClr,
            height: screenHeight / 8,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: screenHeight / 10,
                      width: screenWidth / 10,
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Image.asset('assets/images/newlogo.png'),
                      ),
                    ),
                    Text(
                      'soc.regn.no.679/2015',
                      style: TextStyle(
                          fontSize: screenWidth / 150,
                          color: Color.fromARGB(255, 0, 0, 128),
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'రాష్ట్రేతర తెలుగు సమాఖ్య',
                      style: navbarTitle,
                    ),
                    Text(
                      'RASHTRETARA TELUGU SAMAKHYA',
                      style: navbarTitle,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal:10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'CONTACT US',
                        style: navbarText,
                      ),
                      Text(
                        'Phone number: 9825114404',
                        style: navbarText,
                      ),
                      Text(
                        'E-mail: rashtretaratelugusamakhya@gmail.com',
                        style: navbarText,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          ButtonNav(),
        ],
      ),
    );
  }
}
