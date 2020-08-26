import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ui_3/screens/home_screen/home_screen.dart';

void main() {
SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light));
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => HomeScreen(),
      }));
}