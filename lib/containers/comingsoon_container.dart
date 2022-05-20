import 'package:flutter/material.dart';
import 'package:quechainlink/colors/bluepurple_gradient.dart';
import 'package:quechainlink/colors/colours_list.dart';

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
        gradient: bluePurpleGrad(),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Text(
            text,
            style: TextStyle(
              color: orangetext,
              fontSize: 20,
              fontWeight: FontWeight.w900,
            ),
          ),
          SizedBox(height: 10),
          //email address added here!
          Linkify(
            onOpen: _onOpen,
            text: subtext,
            style: TextStyle(color: Colors.tealAccent),
          ),
        ],
      ),
    );
  }

  void _onOpen(LinkableElement link) {}
}
