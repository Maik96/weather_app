import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'RobotoBold',
  fontWeight: FontWeight.w900,
  fontSize: 55.0,
);

const kMessageTextStyle = TextStyle(
    fontFamily: 'RobotoDunn', fontSize: 50.0, fontWeight: FontWeight.w300);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'S',
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);

const kTextFieldDecoration = InputDecoration(
  filled: true,
  icon: Icon(Icons.location_city),
  hintText: 'Enter city here',
  border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(15),
      ),
      borderSide: BorderSide.none),
);
