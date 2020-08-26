import 'package:flutter/material.dart';

import '../../../constants.dart';


class OrderWidget extends StatefulWidget {
  const OrderWidget({
    Key key,
  }) : super(key: key);

  @override
  _OrderWidgetState createState() => _OrderWidgetState();
}

class _OrderWidgetState extends State<OrderWidget> {
  int x = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      width: 160,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(70),
      ),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(30)),
            child: IconButton(
              disabledColor: kPrimaryColor,
              onPressed: () {
                setState(() {
                  if (x > 1) {
                    x = x - 1;
                  }
                });
              },
              icon: Icon(Icons.remove),
              color: Colors.white,
            ),
          ),
          Spacer(),
          Text(
            "$x",
            style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Container(
            decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.circular(30)),
            child: IconButton(
              onPressed: () {
                setState(() {
                  if (x < 10) {
                    x = x + 1;
                }
                });
              },
              icon: Icon(Icons.add),
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
