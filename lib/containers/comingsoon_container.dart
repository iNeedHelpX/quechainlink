import 'package:flutter/material.dart';
import 'package:quechainlink/colors/colours_list.dart';
import 'package:quechainlink/colors/grey_gradient.dart';

//this will be the coming soon container
class ComingSoon extends StatelessWidget {
  final String text, subtext;

  const ComingSoon({required this.text, required this.subtext});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
      padding: EdgeInsets.fromLTRB(15, 10, 15, 0),
      height: 80,
      width: 400,
      decoration: BoxDecoration(
        gradient: greyGrad(),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
              color: lightpink,
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(height: 2),
          Text(
            subtext,
            style: TextStyle(
              color: textturq,
              fontSize: 16,
            ),
          ),
          //email address added here!
        ],
      ),
    );
  }
}
