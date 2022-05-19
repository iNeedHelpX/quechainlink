import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:quechainlink/bars/curvednav_icons.dart';
import 'package:quechainlink/bars/plainappbar.dart';
import 'package:quechainlink/colors/colours_list.dart';
import 'package:quechainlink/global_vars.dart';
import 'package:quechainlink/pages/accountpage.dart';
import 'package:quechainlink/pages/cool.dart';
import 'package:quechainlink/pages/peoplepage_alt.dart';

class AppSetUp extends StatefulWidget {
  AppSetUp({Key? key}) : super(key: key);

  @override
  _AppSetUpState createState() => _AppSetUpState();
}

// int _selectedDestination = 0;

class _AppSetUpState extends State<AppSetUp> {
  //this directs to the shopping page
  int selectedpage = 1;

//list of pages that one can navigate to using the navbar
  final _pageOptions = [
    Cool(),
    PeoplePageAlt(),
    Acc(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawerEnableOpenDragGesture: false,
      //drawer: LoggedInDrawer(),
      backgroundColor: bg,
      appBar: plainBar(context),
      resizeToAvoidBottomInset: true,
      body: _pageOptions[selectedpage],
      bottomNavigationBar: buildCurvedNavigationBar(),
    );
  }

//the nav bar at the bottom
  CurvedNavigationBar buildCurvedNavigationBar() {
    return CurvedNavigationBar(
      index: selectedpage,
      buttonBackgroundColor: tabicon,
      color: tabicon,
      backgroundColor: bg.withOpacity(0.7),
      animationCurve: Curves.linearToEaseOut,
      items: bottomNavIcons(),
      onTap: (index) {
        setState(() {
          selectedpage =
              index; // changing selected page as per bar index selected by the user
        });
      },
    );
  }
}