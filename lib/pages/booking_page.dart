import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:quechainlink/colors/colours_list.dart';
import 'package:web3dart/web3dart.dart';

//this page incorperates the web3dart smart contracts. This project is currently hard coded, but that will change
class BookingPage extends StatefulWidget {
  BookingPage({Key? key}) : super(key: key);

  @override
  State<BookingPage> createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  late Client httpClient;
  late Web3Client ethClient;

  //my metamask address here
  final myAddress = "0x2997E634855532D8ba9886D6912Dc274372c3D42";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bg,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      //stuff here
                    ],
                  ),
                ),
              ],
            ),
            SafeArea(
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.backspace,
                  color: Color.fromARGB(255, 247, 0, 97),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
