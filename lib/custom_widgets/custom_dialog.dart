import 'dart:ui';

import 'package:flutter/material.dart';

class CustomDialog extends StatefulWidget {
  Widget? child;

  CustomDialog({Key? key, this.child}) : super(key: key);

  @override
  _CustomDialogState createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 2, sigmaY: 3),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.white,
                child: widget.child,
              ),
            ),
          )),
    );
  }
}
