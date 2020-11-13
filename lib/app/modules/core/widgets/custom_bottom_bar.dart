import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  final Function onPressed;
  final bool bottomIcons;
  final String text;
  final IconData icons;
  CustomBottomBar(
      {@required this.onPressed,
      @required this.bottomIcons,
      @required this.icons,
      @required this.text});
  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: widget.onPressed,
        child: widget.bottomIcons == true
            ? Container(
                decoration: BoxDecoration(
                  color: Colors.indigo.shade100.withOpacity(0.6),
                  borderRadius: BorderRadius.circular(30),
                ),
                padding:
                    EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8),
                child: Row(
                  children: <Widget>[
                    Icon(
                      widget.icons,
                      color: Colors.indigo,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      widget.text,
                      style: TextStyle(
                          color: Colors.indigo,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ],
                ),
              )
            : Icon(widget.icons));
  }
}
