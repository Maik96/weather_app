import 'package:flutter/material.dart';
import 'package:weather_app/utilities/constants.dart';

class CustomRoundedButton extends StatelessWidget {
  const CustomRoundedButton(
      {super.key,
      required this.buttonLabel,
      required this.funcOnPress,
      required this.backGroundColor});

  final String buttonLabel;
  final Function() funcOnPress;
  final Color backGroundColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kSizedBoxHeight,
      width: kSizedBoxWidth,
      child: ElevatedButton(
          onPressed: funcOnPress,
          style: ElevatedButton.styleFrom(
              backgroundColor: backGroundColor,
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15))),
          child: Text(buttonLabel)),
    );
  }
}
