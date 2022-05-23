import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quechainlink/colors/colours_list.dart';
import 'package:quechainlink/containers/listingcontainer.dart';

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
              height: 10,
            ),

            // add info boxes here

            ItemContainer(
                imgurl:
                    "https://firebasestorage.googleapis.com/v0/b/quechainlink.appspot.com/o/woman1.jpeg?alt=media&token=187682b8-5207-40f7-992d-fb2bca892a67",
                deliverfee: "\$30",
                name: "Janelle"),
            SizedBox(
              height: 10,
            ),
            ItemContainer(
                imgurl:
                    "https://firebasestorage.googleapis.com/v0/b/quechainlink.appspot.com/o/moonrisewoman.jpeg?alt=media&token=575ca11c-394b-4a69-939c-c46b8f8db42f",
                deliverfee: "\$30",
                name: "Julia")
          ],
        ),
      ),
    );
  }
}
