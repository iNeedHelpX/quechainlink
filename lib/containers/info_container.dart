import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quechainlink/colors/colours_list.dart';

class Info extends StatefulWidget {
  final String boomtitle;
  final String subtitle;
  final String passportoffice;

  Info({
    Key? key,
    required this.boomtitle,
    required this.subtitle,
    required this.passportoffice,
  }) : super(key: key);

  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> {
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
                  _passportOffice(),
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
      ],
    );
  }

  Align _boomTitle() {
    return Align(
      alignment: Alignment.topCenter,
      child: Text(
        widget.boomtitle,
        style: GoogleFonts.fredokaOne(
          fontSize: 28,
          color: tabicon,
        ),
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
              text: widget.subtitle,
              style: GoogleFonts.indieFlower(
                color: gold,
                fontSize: 20,
                fontWeight: FontWeight.w300,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Align _passportOffice() {
    return Align(
      alignment: Alignment.topCenter,
      child: Text(
        widget.passportoffice,
        style: GoogleFonts.kalam(
            fontSize: 18, color: textturq, fontWeight: FontWeight.w400),
        textAlign: TextAlign.center,
      ),
    );
  }
}
