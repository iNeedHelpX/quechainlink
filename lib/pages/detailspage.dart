import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:quechainlink/colors/colours_list.dart';
import 'package:quechainlink/containers/comingsoon_container.dart';

class DetailsPage extends StatelessWidget {
  // final String imgUrl;

  final String imgUrl;
  const DetailsPage({required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

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
                      SizedBox(
                        width: size.width,
                        child: Image(
                            image: NetworkImage(imgUrl), fit: BoxFit.cover),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      ComingSoon(
                        boomtitle: 'COOL',
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(tabicon),
                        ),
                        onPressed: () {
                          Get.toNamed("/booking");
                        },
                        child: Text("press here to book"),
                      ),
                    ],
                  ),
                ),

                //put things here?
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
