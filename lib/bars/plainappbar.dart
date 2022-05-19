import 'package:flutter/material.dart';
import 'package:quechainlink/bars/logoutbutton.dart';
import 'package:quechainlink/colors/colours_list.dart';

AppBar myAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: lightpink,
    title: Text(
      'CRM by Julia Pak',
      style: TextStyle(
          color: textgreyblue,
          fontSize: 40,
          fontFamily: 'summer',
          fontWeight: FontWeight.w500),
    ),
    actions: [logoutButton(context)],
  );
}
