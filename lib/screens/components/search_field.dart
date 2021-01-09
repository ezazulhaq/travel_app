import 'package:flutter/material.dart';
import 'package:travel_app/constants.dart';
import 'package:travel_app/size_config.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(50),
      width: getProportionateScreenWidth(313),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Color(0xFF3E4067),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(3, 3),
            blurRadius: 10,
            color: Colors.black.withOpacity(0.16),
            spreadRadius: -2,
          ),
        ],
      ),
      child: TextField(
        onChanged: (value) {},
        textCapitalization: TextCapitalization.none,
        decoration: InputDecoration(
          hintText: "Search your destination...",
          hintStyle: TextStyle(
            fontSize: getProportionateScreenHeight(12),
            color: Color(0xFF464A7E),
          ),
          suffixIcon: Icon(
            Icons.search,
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(kDefaultPadding),
            vertical: getProportionateScreenHeight(kDefaultPadding / 2),
          ),
        ),
      ),
    );
  }
}
