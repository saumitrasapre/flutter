import 'package:flutter/material.dart';
import 'dart:async';
import 'package:chronograph/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data={};
  void updateWorldTime() async
  {
    WorldTime instance=WorldTime(location: data['location'],flag: data['flag'],url:data['url']);
    await instance.getTime();
    setState(() {
      data={
        'time':instance.time,
        'location': instance.location,
        'flag':instance.flag,
        'eventOfDay':instance.eventOfDay,
        'url':instance.url
      };
    });
  }
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 15), (Timer t) => updateWorldTime());
  }

  @override
  Widget build(BuildContext context) {
    
    data=data.isEmpty? ModalRoute.of(context).settings.arguments : data;
    print(data);

    //set background
    String bgImagechooser=data['eventOfDay'];
    String bgImage;
    Color bgColor;

    if(bgImagechooser=='earlyMorning')
      {
        bgImage='earlymorning.png';
        bgColor=Colors.purple[400];
      }
    else if(bgImagechooser=='morning')
      {
        bgImage='day.png';
        bgColor=Colors.blue;
      }
    else if(bgImagechooser=='afternoon')
    {
      bgImage='afternoon.png';
      bgColor=Colors.orange[700];

    }
    else if(bgImagechooser=='evening')
    {
      bgImage='evening.png';
      bgColor=Colors.red[800];
    }
    else if(bgImagechooser=='night')
    {
      bgImage='night.jpg';
      bgColor=Colors.indigo[800];
    }

    
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/$bgImage'),
                fit: BoxFit.cover
              )
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 120.0, 0, 0),
              child: Column(
                children: <Widget>[
                  FlatButton.icon(
                      onPressed: () async{
                       dynamic result =await Navigator.pushNamed(context, '/location');
                       setState(() {
                         data={
                           'time':result['time'],
                           'location': result['location'],
                           'flag':result['flag'],
                           'eventOfDay':result['eventOfDay'],
                           'url':result['url']
                         };
                       });
                      },
                      icon: Icon(
                        Icons.edit_location,
                        color: Colors.grey[800],
                      ),
                      label: Text(
                        'Edit Location',
                        style: TextStyle(
                          color: Colors.grey[800]
                        ),
                      )
                  ),
                  SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Stack(
                        children: <Widget>[
                          // Stroked text as border.
                          Text(
                            data['location'],
                            style: TextStyle(
                              fontSize: 28.0,
                              letterSpacing: 2.0,
                              foreground: Paint()
                                ..style = PaintingStyle.stroke
                                ..strokeWidth = 0.7
                                ..color = Colors.black,
                            ),
                          ),
                          // Solid text as fill.
                          Text(
                            data['location'],
                            style: TextStyle(
                              fontSize: 28.0,
                              letterSpacing: 2.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(height: 20.0),
                  /*Text(
                    data['time'],
                    style: TextStyle(
                      fontSize: 66.0,
                      color: Colors.white
                    ),
                  )*/
                  Stack(
                    children: <Widget>[
                      // Stroked text as border.
                      Text(
                        data['time'],
                        style: TextStyle(
                          fontSize: 66.0,
                          letterSpacing: 2.0,
                          foreground: Paint()
                            ..style = PaintingStyle.stroke
                            ..strokeWidth = 0.7
                            ..color = Colors.black,
                        ),
                      ),
                      // Solid text as fill.
                      Text(
                        data['time'],
                        style: TextStyle(
                          fontSize: 66.0,
                          letterSpacing: 2.0,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SpinKitFoldingCube(
                    color: Colors.white,
                    size: 40.0,
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}
