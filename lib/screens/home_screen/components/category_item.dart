import 'package:flutter/material.dart';

import '../../../constants.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    Key key,
    @required this.image,
    @required this.title, 
    this.press,
  }) : super(key: key);
  final String image, title;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.all(4.0),
        margin: EdgeInsets.only(right: 8.0),
        height: 250,
        width: 110,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: kPrimaryLightColor, width: 2.0)),
        child: Column(
          children: [
            Container(
              height: 100,
              width: 100,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Spacer(),
            Text(
              title,
              style: TextStyle(
                color: kTextColor,
                fontSize: 16,
                letterSpacing: 2.0,
                height: 1.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Foods",
              style: TextStyle(
                  color: kTextColor,
                  fontSize: 12,
                  height: 1.5,
                  letterSpacing: 2.0),
            ),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
