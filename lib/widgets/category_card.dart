import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
// import 'package:tut1/styles/images.dart';

class CategoryCard extends StatelessWidget {
  final String title, svgSrc;

  const CategoryCard({
    Key? key,
    required this.title,
    required this.svgSrc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(13)),
      child: Column(
        children: [
          Spacer(),
          SvgPicture.asset(svgSrc),
          Spacer(),
          Text(
            title,
            style: TextStyle(
              fontSize: 15,
            ),
          )
        ],
      ),
    );
  }
}
