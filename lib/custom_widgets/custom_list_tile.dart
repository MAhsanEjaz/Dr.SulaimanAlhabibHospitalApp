import 'package:flutter/material.dart';

class CustomListTile extends StatefulWidget {
  IconData? iconData;
  String? text;
  Function()? onTap;

  CustomListTile({this.iconData, this.onTap, this.text});

  @override
  _CustomListTileState createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      minLeadingWidth: 0,
      onTap: (widget.onTap),
      leading: Icon(
        widget.iconData,
        color: Colors.black,
      ),
      title: Text(
        widget.text!,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
    );
  }
}
