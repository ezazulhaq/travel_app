import 'package:flutter/material.dart';
import 'package:travel_app/constants.dart';
import 'package:travel_app/models/TravelSpot.dart';
import 'package:travel_app/models/User.dart';
import 'package:travel_app/size_config.dart';

class Travelers extends StatelessWidget {
  const Travelers({
    Key key,
    @required this.users,
  }) : super(key: key);

  final List<User> users;

  @override
  Widget build(BuildContext context) {
    int totalUsers = 0;
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(30),
      child: Stack(
        children: [
          ...List.generate(travelSpots[0].users.length, (index) {
            totalUsers++;
            return Positioned(
              left: (22 * index).toDouble(),
              child: buildTravelFace(index),
            );
          }),
          Positioned(
            left: (22 * totalUsers).toDouble(),
            child: SizedBox(
              height: getProportionateScreenHeight(28),
              width: getProportionateScreenWidth(28),
              // ignore: deprecated_member_use
              child: FlatButton(
                onPressed: () {},
                padding: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                color: kPrimaryColor,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  ClipOval buildTravelFace(int index) {
    return ClipOval(
      child: Image.asset(
        travelSpots[0].users[index].image,
        height: getProportionateScreenHeight(28),
        width: getProportionateScreenWidth(28),
        fit: BoxFit.cover,
      ),
    );
  }
}
