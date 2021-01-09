import 'package:flutter/material.dart';
import 'package:travel_app/screens/components/home_header.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      clipBehavior: Clip.none,
      child: Column(
        children: [
          HomeHeader(),
        ],
      ),
    );
  }
}
