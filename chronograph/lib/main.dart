import 'package:flutter/material.dart';
import 'package:chronograph/pages/loading.dart';
import 'package:chronograph/pages/location_choose.dart';
import 'package:chronograph/pages/home.dart';
import 'package:flare_splash_screen/flare_splash_screen.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: SplashScreen.navigate(
    name: 'assets/intro.flr',
    next: (context) => Loading(),
    startAnimation: 'intro',
    until: () => Future.delayed(Duration(seconds: 3)),
    backgroundColor: Colors.white,
  ),
  //initialRoute: '/home',
  routes: {
   //'/':(context){ return Loading();},
    '/home':(context){return Home();},
    '/location':(context){return ChooseLocation();}

  },
));