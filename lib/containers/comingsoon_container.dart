import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quechainlink/colors/colours_list.dart';
import 'package:url_launcher/url_launcher.dart';

//this will be the coming soon container
class ComingSoon extends StatefulWidget {
  final String boomtitle;

  ComingSoon({
    Key? key,
    required this.boomtitle,
  }) : super(key: key);

  @override
  _ComingSoonState createState() => _ComingSoonState();
}

class _ComingSoonState extends State<ComingSoon> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Stack(
        children: <Widget>[
          Padding(
            //This is the padding around the box
            padding: const EdgeInsets.fromLTRB(15, 2, 15, 15),
            child: Container(
              padding: EdgeInsets.only(
                  //This is the padding around the text!
                  left: 15,
                  top: 10,
                  right: 16,
                  bottom: 5),
              width: 400,
              margin: EdgeInsets.only(top: 16),
              decoration: _decor(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _boomTitle(),
                  _textTitle(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

//the box color and design
  BoxDecoration _decor() {
    return BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: textgreyblue,
        boxShadow: [
          BoxShadow(
              color: Color.fromARGB(255, 98, 21, 255),
              offset: Offset(11, 10),
              blurRadius: 75),
        ]);
  }

  Align _boomTitle() {
    return Align(
      alignment: Alignment.topCenter,
      child: Text(
        widget.boomtitle,
        style: GoogleFonts.rampartOne(fontSize: 30, color: lightpink),
        textAlign: TextAlign.center,
      ),
    );
  }

  Align _textTitle() {
    return Align(
      alignment: Alignment.center,
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text:
                  "This is a dapp that allows you to book people to wait in lines for you. This is very much gig economy for dealing with long lines. Bookings are for 5 hour blocks. You will get an NFT of your booking. Hopefully this dapp will evolve into a real world thing! Here is my email: ",
              style: GoogleFonts.marmelad(fontSize: 24, color: orangetext),
            ),
            TextSpan(
              text: "email me",
              style: GoogleFonts.carterOne(fontSize: 18, color: tabicon),
              recognizer: TapGestureRecognizer()
                ..onTap = (() => launch("mailto:jpak04442GMAIL.COM")),
            ),
          ],
        ),
      ),
    );
  }
}
