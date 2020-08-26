import 'package:flutter/material.dart';

import '../../../constants.dart';


class BackBut extends StatelessWidget {
  const BackBut ({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: 55,
      alignment: Alignment.center,
      decoration: BoxDecoration(
          color: kPrimaryLightColor,
          borderRadius: BorderRadius.circular(20)),
      child: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(
          Icons.arrow_back_ios_outlined,
        ),
        color: kIconsColor,
      ),
    );
  }
}
