import 'package:bmi_calculator/constants/constants.dart';
import 'package:flutter/material.dart';



class CardContent extends StatelessWidget {
  final IconData contentIcon;
  final String contentText;
  CardContent({this.contentIcon, this.contentText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          contentIcon,
          size: 80.0,
          color: Colors.white,
        ),
        SizedBox(height: 10.0),
        Text(
          contentText,
          style: kContentTextStyle,
        ),
      ],
    );
  }
}
