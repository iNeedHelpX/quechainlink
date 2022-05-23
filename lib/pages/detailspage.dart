import 'package:flutter/material.dart';
import 'package:quechainlink/colors/colours_list.dart';
import 'package:quechainlink/containers/comingsoon_container.dart';

class DetailsPage extends StatelessWidget {
  // final String imgUrl;
  final String name;
  final String imgUrl;
  const DetailsPage({required this.imgUrl, required this.name});

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
                      ComingSoon(
                          text: name,
                          subtext: 'passport office: 74 victoria st Toronto')
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
