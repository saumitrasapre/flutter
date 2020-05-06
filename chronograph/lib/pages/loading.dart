import 'package:flutter/material.dart';
import 'package:chronograph/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setupWorldTime() async
  {
    WorldTime instance=WorldTime(location: 'Kolkata',flag: 'india.png',url: 'Asia/Kolkata');
   await instance.getTime();
   Navigator.pushReplacementNamed(context, '/home',arguments: {
     'location':instance.location,
     'time':instance.time,
     'flag':instance.flag
   });

  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitRotatingCircle(
          color: Colors.white,
          size: 50.0,
        ),

      )
    );
  }
}





/*
IGNORE THIS
  void getData() async
  {
    Response response=await get('https://jsonplaceholder.typicode.com/todos/1');
    Map data=jsonDecode(response.body);
    print(data);
    print(data['title']);


   //Simulate network request for a username
    String username=await Future.delayed(Duration(seconds: 3),(){
     return 'Moe the cat';
    });

    //simulate network request to get bio of user
    String bio=await Future.delayed(Duration(seconds: 2),(){
      return'Getting high on catnip,Purring,Throwing objects off the table';
    });
    print('Rest of the code $username and $bio');
    */
