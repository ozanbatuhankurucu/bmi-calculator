import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget cardChild;
  final Function pressOn;
  ReusableCard({@required this.colour, this.cardChild, this.pressOn});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressOn,
      child: Container(
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: cardChild,
      ),
    );
  }
}
