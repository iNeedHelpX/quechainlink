import 'package:flutter/material.dart';
import 'package:quechainlink/containers/comingsoon_container.dart';

class InfoAboutApp extends StatefulWidget {
  InfoAboutApp({Key? key}) : super(key: key);

  @override
  State<InfoAboutApp> createState() => _InfoAboutAppState();
}

class _InfoAboutAppState extends State<InfoAboutApp> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //add boxes here

        SizedBox(
          height: 100,
        ),
        ComingSoon(
          boomtitle: "ok",
        ),
      ],
    );
  }
}
