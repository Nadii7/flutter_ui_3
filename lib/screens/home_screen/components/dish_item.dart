import 'package:flutter/material.dart';

import '../../../constants.dart';

class DishItem extends StatelessWidget {
  const DishItem({
    Key key,
    @required this.image,
    @required this.title,
    @required this.time,
    @required this.price, this.press,@required this.description,
  }) : super(key: key);
  final String image, title,description, time, price;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        width: 200,
        height: 340,
        padding: EdgeInsets.all(16.0),
        margin: EdgeInsets.only(right: 16.0),
        decoration: BoxDecoration(
          color: kPrimaryLightColor,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                    width: 140,
                    height: 140,
                    margin: EdgeInsets.fromLTRB(14.0, 0.0, 14.0, 0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(70),
                      child: Image.asset(
                        "assets/icons/plate.jpg",
                        fit: BoxFit.none,
                      ),
                    )),
                Container(
                  width: 120,
                  height: 120,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            Text(
              title,
              style: TextStyle(
                fontSize: 24.0,
                color: kTextColor,
                height: 1.5,
              ),
            ),
            Spacer(),
            Text(
              description,
              style: TextStyle(
                color: kIconsColor,
                fontSize: 12.0,
                height: 1.5,
              ),
            ),
            Spacer(),
            Row(
              children: [
                Icon(
                  Icons.watch_later_outlined,
                  size: 20,
                  color: kIconsColor,
                ),
                SizedBox(width: 5.0),
                Text(
                  time,
                  style: TextStyle(
                    color: kIconsColor,
                    fontSize: 12.0,
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
          ],
        ),
      ),
    );
  }
}
