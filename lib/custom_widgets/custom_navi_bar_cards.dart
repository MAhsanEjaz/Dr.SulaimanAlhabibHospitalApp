import 'package:flutter/material.dart';

class CustomNavBar extends StatefulWidget {
  IconData? iconData;
  String? title;
  bool color;
  Function()? onTap;

  CustomNavBar({this.iconData, this.title, required this.color, this.onTap});

  @override
  _CustomNavBarState createState() => _CustomNavBarState();
}

class _CustomNavBarState extends State<CustomNavBar> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (widget.onTap),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              widget.iconData,
              color: widget.color ? Colors.black : Colors.grey.shade400,
            ),
            Text(
              widget.title!,
              style: TextStyle(
                  color: widget.color ? Colors.black : Colors.grey.shade400),
            )
          ],
        ),
      ),
    );
  }
}
