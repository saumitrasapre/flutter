import 'package:flutter/material.dart';
import 'package:chronograph/pages/loading.dart';
import 'package:chronograph/pages/location_choose.dart';
import 'package:chronograph/pages/home.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  //initialRoute: '/home',
  routes: {
    '/':(context){ return Loading();},
    '/home':(context){return Home();},
    '/location':(context){return ChooseLocation();}

  },
));