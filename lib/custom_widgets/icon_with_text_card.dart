import 'package:flutter/material.dart';

class IconWithTextCard extends StatefulWidget {
  IconData? iconData;
  String? text;

  IconWithTextCard({this.iconData, this.text});

  @override
  _IconWithTextCardState createState() => _IconWithTextCardState();
}

class _IconWithTextCardState extends State<IconWithTextCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Icon(
            widget.iconData,
            size: 10,
            color: Colors.white,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 4.0),
            child: Text(
              widget.text!,
              style: TextStyle(
                  fontSize: 10,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
    );
  }
}
