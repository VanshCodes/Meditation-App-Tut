import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tut1/styles/colors.dart';
import 'package:tut1/styles/constant.dart';
import 'package:tut1/styles/images.dart';
import 'package:tut1/widgets/bottom_nav_item.dart';
import 'package:tut1/widgets/category_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        height: 80,
        color: Colors.white,
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: constant.bottomNavItems
                .map((e) => BottomNavItem(
                      svgSrc: e["svgSrc"],
                      text: e["text"],
                      press: e["press"],
                    ))
                .toList()

            // .toList(),
            ),
      ),
      body: Stack(
        children: [
          Container(
            height: (45 / 100) * (size.height),
            decoration: BoxDecoration(
                color: customColor.kHomeSecondColor,
                image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    image: AssetImage(customImages.bgHomeScreen))),
          ),
          SafeArea(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    alignment: Alignment.center,
                    height: 52,
                    width: 52,
                    decoration: BoxDecoration(
                        color: customColor.kHomeSecondColorBox,
                        shape: BoxShape.circle),
                    child: SvgPicture.asset(customImages.hamburgerIcon),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Good Morning Vansh",
                    style:
                        TextStyle(fontSize: 40, fontWeight: FontWeight.w900)),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 10),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(29.5)),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search",
                      icon: SvgPicture.asset(customImages.searchIcon),
                      border: InputBorder.none),
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 0.85,
                  children: constant.categoryCards
                      .map((e) =>
                          CategoryCard(title: e["title"], svgSrc: e["svgSrc"]))
                      .toList(),
                ),
              )
              // Theme.of(context)
              //     .textTheme
              //     .headline4
              //     .copyWith(fontWeight: FontWeight.w900))
            ],
          ))
        ],
      ),
    );
  }
}

// class BottomNavItem extends StatelessWidget {
//   final String svgSrc;
//   final String text;
//   // final Function press;
//   final bool isActive;
//   const BottomNavItem({
//     Key? key,
//     required this.svgSrc,
//     required this.text,
//     this.isActive = false,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {},
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: [SvgPicture.asset(svgSrc), Text(text)],
//       ),
//     );
//   }
// }
