import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime{

  String location; //location name for UI
  String time;//time in that location
  String flag; //url to a flag icon
  String url;//location url for API endpoint

  WorldTime({this.location, this.flag, this.url});


  Future <void> getTime() async
  {
    //make the request
    try {
      Response response= await get('http://worldtimeapi.org/api/timezone/$url');
      Map data=jsonDecode(response.body);
      //print(data);
      
      //get properties from data
      String dateTime=data['datetime'];
      String offsetHours=data['utc_offset'].substring(1,3);
      String offsetMinutes=data['utc_offset'].substring(4,6);
      //print(dateTime);
      //print(offsetHours);
      //print(offsetMinutes);
      
      //create dateTime object
      DateTime now=DateTime.parse(dateTime);
      now=now.add(Duration(hours: int.parse(offsetHours),minutes: int.parse(offsetMinutes)));
      //set the time property
      time=DateFormat.jm().format(now);
    }
    catch (e) {
      print('Caught Error $e');
      time='Failed to get the time data';
    }


  }


}