import 'package:flutter/material.dart';

import '../../../constants.dart';

class ExtraItems extends StatefulWidget {
  const ExtraItems({Key key, @required this.icon, @required this.text})
      : super(key: key);
  final String icon;
  final String text;

  @override
  _ExtraItemsState createState() => _ExtraItemsState();
}

class _ExtraItemsState extends State<ExtraItems> {
  bool ispresssed = false;
  Color color;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        right: 8.0,
      ),
      child: GestureDetector(
        onTap: () {
          if (ispresssed = false) {
            setState(() {
              color = kPrimaryColor;
              ispresssed = true;
            });
          } else {
            setState(() {
              color = kTextColor;
              ispresssed = false;
            });
          }
        },
        onDoubleTap: (){
          if (ispresssed = false) {
            setState(() {
              color = kPrimaryColor;
              ispresssed = true;
            });
          } else {
            setState(() {
              color = kTextColor;
              ispresssed = false;
            });
          }
        },
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(4.0),
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: kPrimaryLightColor, width: 2.0)),
              child: Image.asset(
                widget.icon,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              widget.text,
              style: TextStyle(
                color: kTextColor,
                height: 1.5,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
