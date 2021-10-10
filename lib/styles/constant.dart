import 'package:flutter/material.dart';
import 'package:tut1/screens/meditation.dart';
import 'package:tut1/styles/images.dart';

class Constants {
  List bottomNavItems = [
    {
      "text": "Today",
      "svgSrc": customImages.calenderIcon,
      "press": (BuildContext context) {
        print(context);
      }
    },
    {
      "text": "All Exersises",
      "svgSrc": customImages.gymIcon,
      "press": (BuildContext context) {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return DetailsScreen();
        }));
      }
    },
    {
      "text": "Settings",
      "svgSrc": customImages.settingsIcon,
      "press": (BuildContext context) {
        print(context);
      }
    },
  ];
  List categoryCards = [
    {"title": "Diet Recommandation", "svgSrc": customImages.burgerIcon},
    {"title": "Kegal Excersise", "svgSrc": customImages.exersiseIcon},
    {"title": "Meditation", "svgSrc": customImages.meditationIcon},
    {"title": "Yoga", "svgSrc": customImages.exersiseIcon},
    {"title": "Kegal Excersise", "svgSrc": customImages.exersiseIcon},
  ];
  Function empty = () {};
}

var constant = Constants();
