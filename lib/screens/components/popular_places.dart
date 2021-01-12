import 'package:flutter/material.dart';
import 'package:travel_app/components/section_title.dart';
import 'package:travel_app/models/TravelSpot.dart';
import 'package:travel_app/screens/components/place_card.dart';

class PopularPlaces extends StatelessWidget {
  const PopularPlaces({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Right now At Spark",
          press: () {},
        ),
        PlaceCard(
          travelSpot: travelSpots[0],
          press: () {},
        ),
      ],
    );
  }
}
