//the alternative people page view

import 'package:flutter/material.dart';
import 'package:quechainlink/containers/listingcontainer.dart';

class PeoplePageAlt extends StatefulWidget {
  PeoplePageAlt({Key? key}) : super(key: key);

  @override
  _PeoplePageAltState createState() => _PeoplePageAltState();
}

class _PeoplePageAltState extends State<PeoplePageAlt> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          ItemContainer(
              imgurl:
                  "https://cdn.shopify.com/s/files/1/1195/0530/products/gif5.gif?v=1591196593",
              name: "Fibre optic mask",
              deliverfee: "\$25"),
          SizedBox(
            height: 20,
          ),
          ItemContainer(
              imgurl:
                  "https://firebasestorage.googleapis.com/v0/b/swooncustomer.appspot.com/o/IMG_5041.jpeg?alt=media&token=2396ebf0-2b24-41e3-b6be-a26f2f539a48",
              deliverfee: "\$25",
              name: "Bitcoin fancy coin"),
          SizedBox(
            height: 20,
          ),
          ItemContainer(
              imgurl:
                  'https://firebasestorage.googleapis.com/v0/b/swooncustomer.appspot.com/o/MYmask4.gif?alt=media&token=caf7c17b-f183-4927-bb37-6ae50550ef3b',
              name: "Menstrual Cup",
              deliverfee: "\$10"),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    ));
  }
}
