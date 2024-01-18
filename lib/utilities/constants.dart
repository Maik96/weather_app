import 'package:flutter/material.dart';

const kSearchLabel = "Search";
const kHereLabel = "Here";
const kGetWeatherLabel = "Get Weather";
const kSearchInfoLabel = "You can search for any city around the world";

const double kSizedBoxWidth = 135;
const double kSizedBoxHeight = 43;

const kTempTextStyle = TextStyle(
  fontFamily: 'RobotoBold',
  fontWeight: FontWeight.w900,
  fontSize: 55.0,
);

const kMessageTextStyle = TextStyle(
    fontFamily: 'RobotoDunn', fontSize: 50.0, fontWeight: FontWeight.w300);

const kButtonTextStyle = TextStyle(
  fontSize: 15.0,
  fontFamily: 'RobotoDunn',
  fontWeight: FontWeight.w700,
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);

const kTextFieldDecoration = InputDecoration(
  filled: true,
  hintText: 'Enter city here',
  border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
      borderSide: BorderSide.none),
);

Icon kBackIcon = const Icon(
  Icons.arrow_back_ios,
  color: Colors.black,
  size: 30.0,
);
