import 'package:flutter/material.dart';
import 'package:travel_app/constants.dart';
import 'package:travel_app/models/TravelSpot.dart';
import 'package:travel_app/screens/components/travelers.dart';
import 'package:travel_app/size_config.dart';

class PlaceCard extends StatelessWidget {
  const PlaceCard({
    Key key,
    @required this.press,
    @required this.travelSpot,
  }) : super(key: key);

  final TravelSpot travelSpot;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(137),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.29,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  topRight: Radius.circular(20.0),
                ),
                image: DecorationImage(
                  image: AssetImage(travelSpot.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            width: getProportionateScreenWidth(137),
            padding: EdgeInsets.all(
              getProportionateScreenWidth(kDefaultPadding),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20.0),
                bottomRight: Radius.circular(20.0),
              ),
              boxShadow: [
                kDefualtShadow,
              ],
            ),
            child: Column(
              children: [
                Text(
                  travelSpot.name,
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                VerticalSpacing(of: 12),
                Travelers(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
