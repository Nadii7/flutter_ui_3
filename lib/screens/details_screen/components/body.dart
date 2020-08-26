import 'package:flutter/material.dart';
import 'package:ui_3/screens/details_screen/components/back_but.dart';
import 'package:ui_3/screens/details_screen/components/extar_item_list.dart';
import 'package:ui_3/screens/details_screen/components/item_details.dart';
import 'package:ui_3/screens/details_screen/components/order_widget.dart';

import '../../../constants.dart';

class Body extends StatefulWidget {
  final String title, description, price, image;
  const Body(
      {Key key,
      @required this.image,
      @required this.title,
      @required this.description,
      @required this.price,
      })
      : super(key: key);
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String, String>> extraList = [
    {
      "icon": "assets/icons/pepper.png",
      "text": "Pepper",
      "pressed": "0",
    },
    {
      "icon": "assets/icons/tomato.png",
      "text": "Tomato",
      "pressed": "0",
    },
    {
      "icon": "assets/icons/carrot.png",
      "text": "Carrot",
      "pressed": "0",
    },
    {
      "icon": "assets/icons/onion.png",
      "text": "Onion",
      "pressed": "0",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 4,
          child: Container(
            padding: EdgeInsets.fromLTRB(24.0, 40.0, 24.0, 16.0),
            color: kPrimaryColor,
            child: BackBut(),
          ),
        ),
        Expanded(
            flex: 15,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 8.0),
              color: kPrimaryColor,
              child: ItemDetails(image: widget.image,title: widget.title,price: widget.price,description: widget.description,),
            )),
        Expanded(
          flex: 7,
          child: Container(
            padding: EdgeInsets.fromLTRB(24.0, 0.0, 24.0, 0.0),
            color: kPrimaryColor,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Choose the ones you want to add",
                  style: TextStyle(
                    color: kTextColor,
                    fontSize: 16.0,
                    height: 1.5,
                  ),
                ),
                Spacer(),
                SizedBox(
                  height: 130,
                  child: ExtraItemsList(extraList: extraList),
                ),
                Spacer(),
              ],
            ),
          ),
        ),
        Expanded(
            flex: 4,
            child: Container(
              padding: EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 8.0),
              child: Row(
                children: [
                  OrderWidget(),
                  Spacer(),
                  FlatButton(
                    onPressed: () {},
                    color: kAccentColor,
                    height: 70,
                    minWidth: 150,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    child: Text(
                      "Order",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
