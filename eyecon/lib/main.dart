import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
     /*body: Column(
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
     */
     body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
         crossAxisAlignment: CrossAxisAlignment.center,
         children: <Widget>[
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: <Widget>[
               IconButton(
                 onPressed: (){
                   print('You pressed the icon button');
                   Fluttertoast.showToast(
                       msg: "Fuck off 😾",
                       toastLength: Toast.LENGTH_SHORT,
                       gravity: ToastGravity.BOTTOM,
                       timeInSecForIosWeb: 1,
                       backgroundColor: Colors.grey,
                       textColor: Colors.white,
                       fontSize: 16.0
                   );
                 },
                 icon: Icon(
                   Icons.pets
                 ),
                 color: Colors.purple,
                 iconSize: 40.0,
               )
             ],
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: <Widget>[
               RaisedButton(
                 onPressed: () {
                   print('You clicked ze Raised button');
                   Fluttertoast.showToast(
                       msg: "Please 😾",
                       toastLength: Toast.LENGTH_SHORT,
                       gravity: ToastGravity.BOTTOM,
                       timeInSecForIosWeb: 1,
                       backgroundColor: Colors.grey,
                       textColor: Colors.white,
                       fontSize: 16.0
                   );
                 },
                 color: Colors.cyan,
                 child: Text('Raised Button!'),
               ),
               Container(
                 child: Text('Your'),
                 color: Colors.cyan,
                 padding: EdgeInsets.all(20.0),
               ),
               Icon(
                 Icons.touch_app,
                 color: Colors.cyan,
                 size: 50.0,
               )
             ],
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: <Widget>[
               FlatButton(
                 onPressed: () {
                   print('You clicked ze Flat button');
                   Fluttertoast.showToast(
                       msg: "Fuck 😾",
                       toastLength: Toast.LENGTH_SHORT,
                       gravity: ToastGravity.BOTTOM,
                       timeInSecForIosWeb: 1,
                       backgroundColor: Colors.grey,
                       textColor: Colors.white,
                       fontSize: 16.0
                   );
                 },
                 color: Colors.pinkAccent,
                 child: Text('Flat Button!'),
               ),
               Container(
                 child: Text('Mom'),
                 color: Colors.pinkAccent,
                 padding: EdgeInsets.all(30.0),
               ),
               Icon(
                 Icons.face,
                 color: Colors.pinkAccent,
                 size: 50.0,
               )
             ],
           ),
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
             crossAxisAlignment: CrossAxisAlignment.center,
             children: <Widget>[
               RaisedButton.icon(
                   onPressed: (){
                     print('You pressed ze weird button!');
                     Fluttertoast.showToast(
                         msg: "Off 😾",
                         toastLength: Toast.LENGTH_SHORT,
                         gravity: ToastGravity.BOTTOM,
                         timeInSecForIosWeb: 1,
                         backgroundColor: Colors.grey,
                         textColor: Colors.white,
                         fontSize: 16.0
                     );
                   },
                   icon: Icon(
                     Icons.supervised_user_circle
                   ),
                   label: Text('Button with Icon!'),
                   color: Colors.orange,
               ),
               Container(
                 child: Text('Gay'),
                 color: Colors.orange,
                 padding: EdgeInsets.all(40.0),
               ),
               Icon(
                 Icons.loyalty,
                 color: Colors.orange,
                 size: 50.0,
               )
             ],
           )

         ],
       ),
     ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('You pressed the FAB!');
          Fluttertoast.showToast(
              msg: "Yeah, you heard the cat! 😾",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.BOTTOM,
              timeInSecForIosWeb: 1,
              backgroundColor: Colors.grey,
              textColor: Colors.white,
              fontSize: 16.0
          );

        },
        backgroundColor: Colors.amber,
        child: Text('Click!'),
      ),
    );
  }
}
