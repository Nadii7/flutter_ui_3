import 'package:flutter/material.dart';
import 'package:ui_3/constants.dart';
import 'package:ui_3/screens/details_screen/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final String title, description, price, image;
// Thats means we have to  pass it
  const DetailsScreen(
      {Key key,
      @required this.image,
      @required this.title,
      @required this.description,
      @required this.price,
      })
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Body(
        title: this.title,
        description: this.description,
        price: this.price,
        image: this.image,
        
      ),
    );
  }
}