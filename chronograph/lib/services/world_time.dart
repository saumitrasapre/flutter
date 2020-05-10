import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime{

  String location; //location name for UI
  String time;//time in that location
  String flag; //url to a flag icon
  String url;//location url for API endpoint
  String eventOfDay;//decides if morning,evening,night,etc

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
      String offsetHours=data['utc_offset'].substring(0,3);
      String offsetMinutes=data['utc_offset'].substring(4,6);
      //print(dateTime);
      //print(offsetHours);
      //print(offsetMinutes);
      
      //create dateTime object
      DateTime now=DateTime.parse(dateTime);
      now=now.add(Duration(hours: int.parse(offsetHours),minutes: int.parse(offsetMinutes)));
      //print(now.hour);
      //set the time property
      //isDaytime=now.hour>6 && now.hour<20 ? true : false;
      if(4<=now.hour && now.hour<=5)
        {
          eventOfDay='earlyMorning';
        }
      else if(6<=now.hour && now.hour<=11)
        {
          eventOfDay='morning';
        }
      else if(12<=now.hour && now.hour<=16)
      {
        eventOfDay='afternoon';
      }
      else if(17<=now.hour && now.hour<=19)
      {
        eventOfDay='evening';
      }
      else if(20<=now.hour && now.hour<=23)
      {
        eventOfDay='night';
      }
      else if(0<=now.hour && now.hour<=3)
      {
        eventOfDay='night';
      }
      time=DateFormat.jm().format(now);
    }
    catch (e) {
      print('Caught Error $e');
      time='Failed to get the time data';
    }


  }


}