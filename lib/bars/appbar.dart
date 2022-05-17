import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quechainlink/colors/bluepurple_gradient.dart';

import '../colors/colours_list.dart';

AppBar topAppBar(BuildContext context) {
  return AppBar(
    //maybe add this later?
    // leading: Padding(
    //     padding: EdgeInsets.all(5),
    //     child: IconButton(
    //       icon: Icon(Icons.menu),
    //       onPressed: () {
    //         //somethibg
    //       },
    //       //onPressed: () => scaffoldKey.currentState!.openDrawer(),
    //     )),

    actions: [
      //add stuff here for the app
    ],

    flexibleSpace: ClipRRect(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(24),
        bottomRight: Radius.circular(24),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: bluePurpleGrad(),
        ),
      ),
    ),
    elevation: 16,
    shadowColor: lightpink,
    backgroundColor: Colors.transparent,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(20),
        bottomRight: Radius.circular(20),
      ),
    ),
    //set size of appbar. This is sort of big
    bottom: PreferredSize(
      preferredSize: Size.fromHeight(70),
      child: Stack(
        children: [
          Text(
            "Que",
            style: GoogleFonts.coiny(
              textStyle: TextStyle(
                color: lightpink,
                fontWeight: FontWeight.w400,
                fontSize: 60,
                shadows: [
                  Shadow(
                    offset: Offset(6.0, 8.0),
                    blurRadius: 8.0,
                    color: Color.fromARGB(255, 25, 25, 25).withOpacity(0.5),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
