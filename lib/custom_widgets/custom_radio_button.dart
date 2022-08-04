import 'package:flutter/material.dart';

class CustomRadioButtonWithText extends StatefulWidget {
  String? text, text2;
  int? value;
  Function(Object)? onChanged;

  CustomRadioButtonWithText(
      {this.text, this.onChanged, this.text2, this.value});

  @override
  _CustomRadioButtonWithTextState createState() =>
      _CustomRadioButtonWithTextState();
}

class _CustomRadioButtonWithTextState extends State<CustomRadioButtonWithText> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio(onChanged: (value) {}, groupValue: widget.text, value: 1),
        Text(widget.text2!)
      ],
    );
  }
}
