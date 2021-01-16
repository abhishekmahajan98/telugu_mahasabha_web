import 'package:flutter/material.dart';
import 'package:telugu_mahasabha_web/views/about_view.dart';
import 'package:telugu_mahasabha_web/views/home_view.dart';
import 'package:telugu_mahasabha_web/views/members_view.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: 'Telugu Mahasabha',
      routes: {
        '/': (context) => HomeView(),
        '/about': (context) => AboutView(),
        '/members':(context)=>MembersView(),
      },
    );
  }
}
