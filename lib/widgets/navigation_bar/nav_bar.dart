import 'package:flutter/material.dart';
import 'package:telugu_mahasabha_web/constants/navbar_constants.dart';
import 'package:telugu_mahasabha_web/widgets/button_nav/button_nav.dart';

class NavigationBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Material(
            //height: 120,
            color: Color.fromARGB(255, 128, 0, 0),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 80,
                            width: 100,
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Image.asset('assets/images/logo.jpg'),
                            ),
                          ),
                          Text(
                            'soc.regn.no.679/2015',
                            style: TextStyle(fontSize: 11, color: Colors.white),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'RASHTRETARA TELUGU SAMAKHYA',
                            style: navbarTitle,
                          ),
                          Text(
                            'రాష్ట్రేతర తెలుగు సమాఖ్య',
                            style: navbarTitle,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
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
                )
              ],
            ),
          ),
          /*Divider(
            height: 0,
            //color: Colors.black,
            thickness: 1.5,
          ),*/
          ButtonNav(),
        ],
      ),
    );
  }
}
