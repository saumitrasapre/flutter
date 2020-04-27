import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    appBar: AppBar(
      title: Text('Grey Racoon'),
      centerTitle: true,
    ),
    body: Center(
      child:Text('Racoons are fluffy!') ,
    ),
    floatingActionButton:FloatingActionButton(
      child: Text('click'),
    ),
  ),
));