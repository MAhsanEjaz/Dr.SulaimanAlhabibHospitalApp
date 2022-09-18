import 'package:flutter/material.dart';

class CustomRadioButtonWithText extends StatefulWidget {
  String? title;
  String? value;
  String? groupValue;
  void Function(String?)? onChanged;

  CustomRadioButtonWithText(
      {Key? key, this.onChanged, this.value, this.groupValue, this.title})
      : super(key: key);

  @override
  _CustomRadioButtonWithTextState createState() =>
      _CustomRadioButtonWithTextState();
}

class _CustomRadioButtonWithTextState extends State<CustomRadioButtonWithText> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Radio(
              activeColor: Colors.red,
              value: widget.value!,
              groupValue: widget.groupValue,
              onChanged: (widget.onChanged)),
          Text(widget.title!)
        ],
      ),
    );
  }
}
