import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tut1/screens/meditation.dart';

class BottomNavItem extends StatelessWidget {
  final String svgSrc;
  final String text;
  final Function press;
  final bool isActive;
  const BottomNavItem({
    Key? key,
    required this.svgSrc,
    required this.text,
    this.isActive = false,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) {
            return DetailsScreen();
          }),
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [SvgPicture.asset(svgSrc), Text(text)],
      ),
    );
  }
}
