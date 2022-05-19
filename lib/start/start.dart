import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:quechainlink/auth/loginservice.dart';
import 'package:quechainlink/bars/appbar.dart';
import 'package:quechainlink/bars/curvednav_icons.dart';
import 'package:quechainlink/bars/plainappbar.dart';
import 'package:quechainlink/colors/colours_list.dart';
import 'package:quechainlink/global_vars.dart';
import 'package:quechainlink/pages/accountpage.dart';
import 'package:quechainlink/pages/cool.dart';
import 'package:quechainlink/pages/peoplepage_alt.dart';
import 'package:quechainlink/start/app_setting.dart';
import 'package:quechainlink/start/route_generator.dart';

//this is the general setup for the app. it provides the general frame that is used.
class Start extends StatefulWidget {
  Start({Key? key}) : super(key: key);

  @override
  State<Start> createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: AppSetUp(),
      ),
      initialRoute: '/',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }

  //bottom pop up sheet for login or whatever. not currently in use.

  // Future<dynamic> bottomSheet(BuildContext context) {
  //   return showModalBottomSheet(
  //       backgroundColor: bg,
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(22),
  //       ),
  //       context: context,
  //       builder: (BuildContext context) {
  //         //the pink/purple container that hosts the login
  //         //return LoginContainer();
  //         return Text('need to replace asap julia');
  //       });
  // }

//the curved nav bar at the bottom screen

}
