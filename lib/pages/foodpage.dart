import 'package:flutter/material.dart';
import 'package:quechainlink/containers/comingsoon_container.dart';

class FoodListings extends StatefulWidget {
  FoodListings({Key? key}) : super(key: key);

  @override
  State<FoodListings> createState() => _FoodListingsState();
}

class _FoodListingsState extends State<FoodListings> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //add boxes here

        SizedBox(
          height: 100,
        ),
        ComingSoon(
            text: "Will add food ordering soon...", subtext: "coming soon"),
      ],
    );
  }
}
