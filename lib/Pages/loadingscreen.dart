import 'package:flutter/material.dart';
import 'package:world_time/services/worldtime.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class loadingcreen extends StatefulWidget {
  @override
  _loadingcreenState createState() => _loadingcreenState();
}

class _loadingcreenState extends State<loadingcreen> {

  void setupWorldTime() async {
    WorldTime instance =
        WorldTime(location: 'Berlin', flag: 'Germany', url: 'Europe/Berlin');
    await instance.getTime();
     Navigator.pushNamed(context, '/home', arguments: {
       'location': instance.location,
       'flag': instance.flag ,
       'time': instance.time ,
       'isDaytime' : instance.isDaytime,
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
          child:  SpinKitCubeGrid(
            color: Colors.white,
            size: 100.0,
          ),
      ),
    );
  }
}
