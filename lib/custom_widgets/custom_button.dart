import 'package:flutter/material.dart';

class CustomButton extends StatefulWidget {
  Function()? onTap;
  String? child;
  Color? btnColor;

  CustomButton({Key? key, this.child, this.onTap, this.btnColor})
      : super(key: key);

  @override
  _CustomButtonState createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: SizedBox(
        height: 44,
        width: double.infinity,
        child: ElevatedButton(
          onPressed: (widget.onTap),
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              elevation: 0,
              primary: widget.btnColor),
          child: Text(widget.child!),
        ),
      ),
    );
  }
}
