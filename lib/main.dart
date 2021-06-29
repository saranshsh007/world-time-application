import 'package:flutter/material.dart';
import 'package:world_time/Pages/home.dart';
import 'package:world_time/Pages/chooselocation.dart';
import 'package:world_time/Pages/loadingscreen.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (Context) => loadingcreen(),
    '/home':(Context) => Home(),
    '/location':(Context) => chooselocation(),
  },
));