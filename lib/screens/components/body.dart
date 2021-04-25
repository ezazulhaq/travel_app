// @dart = 2.9
import 'package:flutter/material.dart';
import 'package:travel_app/components/section_title.dart';
import 'package:travel_app/constants.dart';
import 'package:travel_app/screens/components/popular_places.dart';
import 'package:travel_app/screens/components/home_header.dart';
import 'package:travel_app/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      child: Column(
        children: [
          HomeHeader(),
          VerticalSpacing(),
          PopularPlaces(),
          VerticalSpacing(),
          SectionTitle(
            title: "Top Travelers in Spark",
            press: () {},
          ),
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(kDefaultPadding),
            ),
            padding: EdgeInsets.all(getProportionateScreenWidth(24)),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [kDefualtShadow],
            ),
          )
        ],
      ),
    );
  }
}
