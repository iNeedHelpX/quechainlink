import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quechainlink/colors/colours_list.dart';

//the page shows view of avaiable people to book
class PeoplePage extends StatefulWidget {
  PeoplePage({Key? key}) : super(key: key);

  @override
  State<PeoplePage> createState() => _PeoplePageState();
}

class _PeoplePageState extends State<PeoplePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Text(
              "Hello julia!",
              style: GoogleFonts.aladin(fontSize: 30, color: tabicon),
            ),

            // add info boxes here
          ],
        ),
      ),
    );
  }
}
