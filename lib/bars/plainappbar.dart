import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quechainlink/bars/bottomsheet.dart';
import 'package:quechainlink/colors/bluepurple_gradient.dart';
import 'package:quechainlink/colors/colours_list.dart';
import 'package:quechainlink/global_vars.dart';

AppBar plainBar(BuildContext context) {
  return AppBar(
    //these icons will be added later
    // leading: Padding(
    //     padding: EdgeInsets.all(5),
    //     child: IconButton(
    //       icon: Icon(Icons.menu),
    //       onPressed: () => scaffoldKey.currentState!.openDrawer(),
    //     )),

    actions: [
      // Padding(
      //   padding: const EdgeInsets.only(right: 15),
      //   child: IconButton(
      //     icon: Icon(
      //       Icons.shopping_bag_rounded,
      //       color: Colors.purpleAccent[60],
      //       size: 30,
      //     ),
      //     onPressed: () {
      //       bottomSheet(context);
      //     },
      //   ),
      // ),
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
    shadowColor: bg,
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
                fontSize: 40,
                shadows: [
                  Shadow(
                    offset: Offset(6.0, 8.0),
                    blurRadius: 8.0,
                    color: Color.fromARGB(255, 33, 29, 29).withOpacity(0.5),
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
