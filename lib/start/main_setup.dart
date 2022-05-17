import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:quechainlink/bars/appbar.dart';
import 'package:quechainlink/colors/colours_list.dart';
import 'package:quechainlink/global_vars.dart';

//this is the default settings of the app. Its basically the frame for the app and how it presents itself.

class MainSetUp extends StatefulWidget {
  MainSetUp({Key? key}) : super(key: key);

  @override
  _MainSetUpState createState() => _MainSetUpState();
}

// int _selectedDestination = 0;

class _MainSetUpState extends State<MainSetUp> {
  //this directs to the shopping page
  int selectedpage = 1;

//list of pages that one can navigate to using the navbar
  final _pageOptions = [
    //pages
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawerEnableOpenDragGesture: false,
      //drawer: LoggedInDrawer(),
      backgroundColor: bg,
      appBar: topAppBar(context),
      resizeToAvoidBottomInset: true,
      body: _pageOptions[selectedpage],
      bottomNavigationBar: buildCurvedNavigationBar(),
    );
  }

  Future<dynamic> bottomSheet(BuildContext context) {
    return showModalBottomSheet(
        backgroundColor: bg,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(22),
        ),
        context: context,
        builder: (BuildContext context) {
          //the pink/purple container that hosts the login
          //return LoginContainer();
          return Text('need to replace asap julia');
        });
  }

//the nav bar at the bottom
  CurvedNavigationBar buildCurvedNavigationBar() {
    return CurvedNavigationBar(
      index: selectedpage,
      buttonBackgroundColor: gold,
      color: tabBar,
      backgroundColor: bg.withOpacity(0.7),
      animationCurve: Curves.linearToEaseOut,
      items: tabs(),
      onTap: (index) {
        setState(() {
          selectedpage =
              index; // changing selected page as per bar index selected by the user
        });
      },
    );
  }
}
