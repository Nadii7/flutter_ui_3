import 'package:flutter/material.dart';
import 'package:ui_3/constants.dart';
import 'package:ui_3/screens/details_screen/details_screen.dart';
import 'package:ui_3/screens/home_screen/components/category_item.dart';
import 'package:ui_3/screens/home_screen/components/dish_item.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  List<Map<String, String>> categoryList = [
    {
      "image": "assets/categories/arabic.jpg",
      "title": "Arabian",
    },
    {
      "image": "assets/categories/chinees.jpg",
      "title": "Chinees",
    },
    {
      "image": "assets/categories/frinsh.jpg",
      "title": "Frinsh",
    },
    {
      "image": "assets/categories/italian.jpg",
      "title": "Italian",
    },
    {
      "image": "assets/categories/turkish.jpg",
      "title": "Turkish",
    },
  ];
  List<Map<String, String>> dishesList = [
    {
      "image": "assets/items/1.png",
      "title": "Pizza",
      "description": "Vegitable special menu\nfor vegetarians",
      "time": "27",
      "price": "30",
    },
    {
      "image": "assets/items/2.png",
      "title": "Grilled Veggie",
      "description": "Vegitable special menu\nfor vegetarians",
      "time": "20",
      "price": "21.5",
    },
    {
      "image": "assets/categories/frinsh.jpg",
      "title": "Potato Stick",
      "description": "Vegitable special menu\nfor vegetarians",
      "time": "29",
      "price": "31",
    },
    {
      "image": "assets/categories/arabic.jpg",
      "title": "Kabsa",
      "description": "Vegitable special menu\nfor vegetarians",
      "time": "17",
      "price": "10.9",
    },
    {
      "image": "assets/items/5.png",
      "title": "Fruit Salad",
      "description": "Vegitable special menu\nfor vegetarians",
      "time": "22",
      "price": "35",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 4,
          child: Container(
            padding: EdgeInsets.fromLTRB(24.0, 40.0, 24.0, 16.0),
            color: kPrimaryColor,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                      color: kPrimaryLightColor,
                      borderRadius: BorderRadius.circular(20)),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.menu),
                    color: kIconsColor,
                  ),
                ),
                Container(
                  height: 55,
                  width: 55,
                  decoration: BoxDecoration(
                    color: kPrimaryLightColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search_rounded),
                    color: kIconsColor,
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 6,
          child: Container(
            padding: EdgeInsets.fromLTRB(24.0, 8.0, 24.0, 8.0),
            alignment: Alignment.centerLeft,
            color: kPrimaryColor,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: categoryList.length,
              itemBuilder: (context, index) => CategoryItem(
                  image: categoryList[index]["image"],
                  title: categoryList[index]["title"],
                  press: () {}),
            ),
          ),
        ),
        Expanded(
            flex: 15,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(24.0),
              color: kPrimaryColor,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Popular Dishes",
                    style: TextStyle(
                      color: kTextColor,
                      fontSize: 24.0,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  SizedBox(
                    height: 330,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: dishesList.length,
                      itemBuilder: (context, index) => DishItem(
                          image: dishesList[index]["image"],
                          title: dishesList[index]["title"],
                          description: dishesList[index]["description"],
                          time: dishesList[index]["time"],
                          price: dishesList[index]["price"],
                          press: () {
                            Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailsScreen(
                          image: dishesList[index]["image"],
                          title: dishesList[index]["title"],
                          description: dishesList[index]["description"],
                          price: dishesList[index]["price"],
                        ),
                      ));
                          }),
                    ),
                  ),
                  Spacer(),
                ],
              ),
            )),
        Expanded(
          flex: 3,
          child: BottomNavigationBar(
            backgroundColor: kPrimaryColor,
            unselectedItemColor: kIconsColor,
            iconSize: 40.0,
            selectedItemColor: kAccentColor,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.restaurant_menu,
                  ),
                  title: Text("")),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.shopping_bag_outlined,
                  ),
                  title: Text("")),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.support_agent_outlined,
                  ),
                  title: Text("")),
            ],
          ),
        ),
      ],
    );
  }
}
