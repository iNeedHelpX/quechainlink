import 'package:flutter/material.dart';
import 'package:quechainlink/containers/comingsoon_container.dart';

class Acc extends StatefulWidget {
  Acc({Key? key}) : super(key: key);

  @override
  State<Acc> createState() => _AccState();
}

class _AccState extends State<Acc> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //put boxes here!
          SizedBox(
            height: 100,
          ),
          ComingSoon(text: "stuff goes here!", subtext: "coming soon")
        ],
      ),
    );
  }
}
