import 'package:flutter/material.dart';
import 'package:ui_3/constants.dart';
import 'package:ui_3/screens/home_screen/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Body(),
    );
  }
}