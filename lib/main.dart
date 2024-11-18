import 'package:cart/pages/community.dart';
import 'package:cart/pages/event.dart';
import 'package:cart/pages/explore.dart';
import 'package:cart/pages/landing.dart';
import 'package:cart/pages/login.dart';
import 'package:cart/pages/register.dart';
import 'package:cart/pages/Home.dart';
import 'package:cart/pages/user.dart';
import 'package:flutter/material.dart';

void main() {
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

    @override
    Widget build(BuildContext context) {
       return MaterialApp(
            debugShowCheckedModeBanner: false,
         home: const Scaffold(
            
            body: MyHomePage(title: 'Gruppe'),
         ),
         routes: {
              '/login': (context) =>const  LoginPage(),
              '/register': (context) =>const RegisterPage(),
              '/user' : (context) =>const UserProfilePage(),
              '/landing': (context) =>  LandingPage(),
              '/explore': (context) =>  ExploreSection(),
              '/community': (context) =>  CommunityPage(),
              '/event': (context) =>  Event(),
              
         },
       );

    }
}