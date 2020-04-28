import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));


class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grey Racoon'),
        centerTitle: true,
        backgroundColor: Colors.purple[600],
      ),
      body: Center(
        /*child:Text(
          'Raccoons are fluffy!',
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.grey[600],
            fontFamily: 'Bangers',
          ),
        ) ,*/
        child: Image(
          //image: NetworkImage('https://curiodyssey.org/wp-content/uploads/bb-plugin/cache/xMammals-Raccoon-square.jpg.pagespeed.ic.W5-0FMTZBa.jpg'),
          image: AssetImage('assets/raccoon2.jpg'),
        ),
      ),

      floatingActionButton:FloatingActionButton(
        child: Text('Click!'),
        onPressed: () {},
        backgroundColor: Colors.purple[600],
      ),
    );
  }
}
