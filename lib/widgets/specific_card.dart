import 'package:tut1/styles/textstyle.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class SpecificCard extends StatelessWidget {
  final price;
  final String name;
  final String name2;

  final bool selected;

  const SpecificCard({
    Key? key,
    required this.price,
    required this.name,
    required this.name2,
    required this.selected,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Container(
        decoration: selected
            ? BoxDecoration(color: Theme.of(context).accentColor)
            : BoxDecoration(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                name,
                style: selected
                    ? textSelectedLayout.smallHeading
                    : textLayout.smallHeading,
              ),
              Text(
                price.toString(),
                style: selected
                    ? textSelectedLayout.subHeading
                    : textLayout.subHeading,
              ),
              Text(
                name2,
                style: selected
                    ? textSelectedLayout.smallHeading
                    : textLayout.smallHeading,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
