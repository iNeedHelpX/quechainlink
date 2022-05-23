import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quechainlink/colors/colours_list.dart';

class ItemContainer extends StatefulWidget {
  // final String deliveryfee;

  ItemContainer({
    Key? key,
    required this.imgurl,

    //this is the item fee not delivery per se!
    required this.deliverfee,
    required this.name,
  }) : super(key: key);

  final String deliverfee;
  final String imgurl;
  final String name;

  @override
  _ItemContainerState createState() => _ItemContainerState();
}

class _ItemContainerState extends State<ItemContainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed("/details", arguments: widget.imgurl);
        //nav over to the details page.
        //Navigator.of(context).pushNamed('/details', arguments: widget.imgurl);
      },
      child: Container(
        margin: EdgeInsets.fromLTRB(15, 5, 15, 5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Material(
            borderRadius: BorderRadius.circular(10),
            color: containerback,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Image(
                        height: 200,
                        width: 400,
                        image: NetworkImage(widget.imgurl),
                        fit: BoxFit.cover),
                    Positioned(
                      left: 0,
                      top: 10,
                      child: ClipRRect(
                        clipBehavior: Clip.hardEdge,
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 0, 161),
                              borderRadius: BorderRadius.circular(8)),
                          child: Text(
                            widget.deliverfee,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: EdgeInsets.all(5.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        widget.name,
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.w800,
                            fontFamily: 'Candy',
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        "Passport office: 74 victoria st, Toronto",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        height: 4.0,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
