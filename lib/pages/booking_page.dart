import 'package:flutter/material.dart';
import 'package:quechainlink/colors/colours_list.dart';

class BookingPage extends StatefulWidget {
  BookingPage({Key? key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
    );
  }
}
