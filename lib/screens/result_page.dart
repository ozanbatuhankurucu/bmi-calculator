import 'package:bmi_calculator/input_page_components/bottom_button.dart';
import 'package:bmi_calculator/input_page_components/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants/constants.dart';

class ResultPage extends StatelessWidget {

  final String categoryText;
  final String bmiText;
  final String interpretationText;

  ResultPage({@required this.categoryText,@required this.bmiText,@required this.interpretationText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
            child: Container(
              alignment: Alignment.bottomLeft,
              padding: EdgeInsets.all(15.0),
              child: Text("Your Results deneme", style: kResultTitleTextStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    categoryText,
                    style: kCategoryTextStyle,
                  ),
                  Text(bmiText, style: kBmiTextStyle),
                  Text(interpretationText,
                      style: kBmiExplanationTextStyle,textAlign: TextAlign.center),
                ],
              ),
            ),
          ),
          Expanded(
            child: BottomButton(
              bottomButtonText: "RE-CALCULATE YOUR BMI",
              onPress: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ],
      ),
    );
  }
}
