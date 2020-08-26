import 'package:flutter/material.dart';

import '../../../constants.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({
    Key key,
    @required this.image,
    @required this.title,
    @required this.price,
    @required this.description,
  }) : super(key: key);
  final String image, title, price, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                    width: 240,
                    height: 240,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(120),
                      child: Image.asset(
                        "assets/icons/plate.jpg",
                        fit: BoxFit.none,
                      ),
                    )),
                Container(
                  width: 220,
                  height: 220,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(110),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        Spacer(
          flex: 3,
        ),
        Row(
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 24.0,
                color: kTextColor,
                height: 1.5,
              ),
            ),
            Spacer(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.baseline,
              children: [
                Text(
                  "\$",
                  style: TextStyle(
                    color: Colors.red[900],
                    fontSize: 16.0,
                  ),
                ),
                Text(
                  price,
                  style: TextStyle(
                    color: Colors.red[900],
                    fontSize: 30.0,
                  ),
                ),
              ],
            ),
          ],
        ),
        Spacer(),
        Text(
          description,
          style: TextStyle(
            color: kIconsColor,
            fontSize: 14.0,
            height: 1.5,
          ),
        ),
        Spacer(),
      ],
    );
  }
}
