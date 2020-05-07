import 'package:flutter/material.dart';
import 'package:chronograph/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {

    List <WorldTime> locations=[
      WorldTime(location: 'Kolkata',flag: 'india.png',url: 'Asia/Kolkata'),
      WorldTime(location: 'London',flag: 'uk.png',url: 'Europe/London'),
      WorldTime(location: 'Berlin',flag: 'germany.png',url: 'Europe/Berlin'),
      WorldTime(location: 'Cairo',flag: 'egypt.png',url: 'Africa/Cairo'),
      WorldTime(location: 'Nairobi',flag: 'kenya.png',url: 'Africa/Nairobi'),
      WorldTime(location: 'Chicago',flag: 'usa.png',url: 'America/Chicago'),
      WorldTime(location: 'New York',flag: 'usa.png',url: 'America/New_York'),
      WorldTime(location: 'Seoul',flag: 'south_korea.png',url: 'Asia/Seoul'),
      WorldTime(location: 'Jakarta',flag: 'indonesia.png',url: 'Asia/Jakarta'),
      WorldTime(location: 'Denver',flag: 'usa.png',url: 'America/Denver'),
      WorldTime(location: 'Tokyo',flag: 'japan.png',url: 'Asia/Tokyo'),
      WorldTime(location: 'Rio De Janeiro',flag: 'brazil.png',url: 'America/Argentina/La_Rioja'),
      WorldTime(location: 'Helsinki',flag: 'finland.png',url: 'Europe/Helsinki'),
      WorldTime(location: 'Oslo',flag: 'norway.png',url: 'Europe/Oslo'),
      WorldTime(location: 'Lisbon',flag: 'portugal.png',url: 'Europe/Lisbon'),
      WorldTime(location: 'Stockholm',flag: 'sweden.png',url: 'Europe/Stockholm')
    ];

    void updateTime(index) async
    {
      WorldTime instance=locations[index];
      await instance.getTime();

      //navigate to the home screen
      
      Navigator.pop(context,{
        'location':instance.location,
        'time':instance.time,
        'flag':instance.flag,
        'eventOfDay':instance.eventOfDay,
        'url':instance.url
      });
    }

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context,index){
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0,horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: (){
                 updateTime(index);
                },
                title: Text(locations[index].location),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/${locations[index].flag}'),
                ),

              ),
            ),
          );
        },
      ),
    );
  }
}
