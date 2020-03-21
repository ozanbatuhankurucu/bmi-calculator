import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  final IconData iconData;
  final Function setNumber;
  RoundIconButton({this.iconData, this.setNumber});

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: setNumber,
      child: Icon(
        iconData,
        color: Colors.white,
      ),
      elevation: 6.0,
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(height: 56.0, width: 56.0),
    );
  }
}