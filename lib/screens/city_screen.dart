// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'package:weather_app/utilities/constants.dart';
import 'package:weather_app/utilities/rounded_button.dart';

class CityScreen extends StatefulWidget {
  const CityScreen({super.key});

  @override
  State<CityScreen> createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  late String cityname;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Align(
                alignment: Alignment.topLeft,
                child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: kBackIcon),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20),
                  child: Text(
                    kSearchInfoLabel,
                  ),
                ),
              ),
              Container(
                  padding: const EdgeInsets.all(20.0),
                  child: TextField(
                      decoration: kTextFieldDecoration,
                      onChanged: (value) {
                        cityname = value;
                      })),
              SizedBox(
                height: 10,
              ),
              CustomRoundedButton(
                  buttonLabel: kGetWeatherLabel,
                  funcOnPress: () {
                    Navigator.pop(context, cityname);
                  },
                  backGroundColor: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }
}
