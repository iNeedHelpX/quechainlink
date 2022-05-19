import 'package:flutter/material.dart';
import 'package:quechainlink/colors/colours_list.dart';
import 'package:quechainlink/containers/logincontainer.dart';

Future<dynamic> bottomSheet(BuildContext context) async {
  return showModalBottomSheet(
      backgroundColor: bg,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(22),
      ),
      context: context,
      builder: (BuildContext context) {
        //the pink/purple container that hosts the login

        return LoginContainer();
        //must return something here so yeah, just replace once you know what to do!
      });
}
