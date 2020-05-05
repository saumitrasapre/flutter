import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getData() async
  {
    /*//Simulate network request for a username
    Future.delayed(Duration(seconds: 3),(){
      print('Moe the cat');
    });

    //simulate network request to get bio of user
    Future.delayed(Duration(seconds: 2),(){
      print('Getting high on catnip,Purring,Throwing objects off the table');
    });*/
   Response response=await get('https://jsonplaceholder.typicode.com/todos/1');
   Map data=jsonDecode(response.body);
   print(data);
   print(data['title']);
  }
  @override
  void initState() {
    super.initState();
    getData();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text('Loading Screen'),
    );
  }
}
