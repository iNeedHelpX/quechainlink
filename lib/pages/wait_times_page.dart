import 'package:flutter/material.dart';
import 'package:quechainlink/containers/comingsoon_container.dart';

class WaitTimesPage extends StatefulWidget {
  WaitTimesPage({Key? key}) : super(key: key);

  @override
  State<WaitTimesPage> createState() => _WaitTimesPageState();
}

class _WaitTimesPageState extends State<WaitTimesPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          //put boxes here!
          SizedBox(
            height: 100,
          ),
          ComingSoon(
            boomtitle: "Thank you for booking!!",
          )
        ],
      ),
    );
  }
}
