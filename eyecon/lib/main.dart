import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Homey() ,
));

class Homey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text('Icon Test!'),
        centerTitle: true,
      ),
     /* body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text('Your'),
          FlatButton(
            onPressed: () {},
            child: Text('Mom'),
            color: Colors.orange,
          ),
          Container(
            child: Text('Gay'),
            color: Colors.cyan,
            padding: EdgeInsets.all(20.0),
          )
        ],
      ),*/
     body: Column(
       mainAxisAlignment: MainAxisAlignment.center,
       crossAxisAlignment: CrossAxisAlignment.end,
       children: <Widget>[
         Container(
           child: Text('Your'),
           color: Colors.cyan,
           padding: EdgeInsets.all(20.0),
         ),
         Container(
           child: Text('Mom'),
           color: Colors.pinkAccent,
           padding: EdgeInsets.all(30.0),
         ),
         Container(
           child: Text('Gay'),
           color: Colors.orange,
           padding: EdgeInsets.all(40.0),
         )
       ],
     ),
     
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.amber,
        child: Text('Click!'),
      ),
    );
  }
}
