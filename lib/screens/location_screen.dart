// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:weather_app/screens/city_screen.dart';
import 'package:weather_app/services/weather.dart';
import 'package:weather_app/utilities/constants.dart';
import 'package:weather_app/utilities/rounded_button.dart';

class LocationScreen extends StatefulWidget {
  const LocationScreen({super.key, this.locationWeather});

  final dynamic locationWeather;

  @override
  State<LocationScreen> createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  WeatherModel weather = WeatherModel();

  late int temperature;
  late String weatherIcon;
  late String city;

  @override
  void initState() {
    super.initState();

    updateUI(widget.locationWeather);
  }

  void updateUI(dynamic weatherData) {
    setState(() {
      if (weatherData == null) {
        temperature = 0;
        weatherIcon = "Error";
        city = "Unable";
        return;
      }
      double temp = weatherData['main']['temp'];
      temperature = temp.toInt();
      var condition = weatherData['weather'][0]['id'];
      weatherIcon = weather.getWeatherIcon(condition);

      city = weatherData['name'];
    });
  }

  void getCurrentLocation() async {
    var weatherData = await weather.getLocationWeather();
    updateUI(weatherData);
  }

  void getSearchLocation() async {
    var typedCityName = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return const CityScreen();
        },
      ),
    );
    if (typedCityName != null) {
      var weatherData = await weather.getCustomLocationWeather(typedCityName);
      updateUI(weatherData);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.fill,
          ),
        ),
        constraints: const BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            //  crossAxisAlignment: CrossAxisAlignment.baseline,
            children: <Widget>[
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[],
              ),
              Column(
                children: <Widget>[
                  const SizedBox(height: 230),
                  Text(
                    weatherIcon,
                    //  condition,
                    style: kConditionTextStyle,
                  ),
                  Text(
                    "$temperature°C",
                    style: kTempTextStyle,
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Text(
                // ignore: unnecessary_string_interpolations
                '$city',
                textAlign: TextAlign.center,
                style: kMessageTextStyle,
              ),
              const SizedBox(height: 170),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CustomRoundedButton(
                    buttonLabel: kHereLabel,
                    funcOnPress: getCurrentLocation,
                    backGroundColor: Colors.grey,
                  ),
                  const SizedBox(width: 20),
                  CustomRoundedButton(
                    buttonLabel: kSearchLabel,
                    funcOnPress: getSearchLocation,
                    backGroundColor: Colors.black,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
