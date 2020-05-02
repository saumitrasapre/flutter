import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
 home: MyHome() ,
));

class MyHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      title: Text('Lumpy Lettuce') ,
        centerTitle:true,
        backgroundColor: Colors.red[600],
      ),
      /*body:  Container(
        color: Colors.grey[400],
        child: Text('Henlo!'),
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
        margin: EdgeInsets.all(30.0),
      ),*/
      body: Padding(
        child: Text('Padding Text!'),
        padding: EdgeInsets.all(90.0),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Colors.red[600],
        child: Text('Click!'),
      ),
    );
  }
}
