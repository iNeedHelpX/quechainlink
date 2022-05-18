import 'package:flutter/material.dart';

LinearGradient blueGreenGrad() {
  return LinearGradient(colors: [
    Color.fromARGB(255, 46, 14, 243),
    Color.fromARGB(255, 14, 230, 243),
    Color.fromARGB(255, 50, 255, 139),
  ], begin: Alignment.bottomLeft, end: Alignment.topRight);
}
