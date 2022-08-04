import 'package:flutter/material.dart';

class HomeHealthWidget extends StatefulWidget {
  bool? value;
  Function(bool?)? onChanged;

  String? text;

  HomeHealthWidget({Key? key, this.value, this.onChanged, this.text})
      : super(key: key);

  @override
  _HomeHealthWidgetState createState() => _HomeHealthWidgetState();
}

class _HomeHealthWidgetState extends State<HomeHealthWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 13.0),
              child:
                  Checkbox(value: widget.value, onChanged: (widget.onChanged)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                widget.text!,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
              ),
            )
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 15.0),
          child: Divider(),
        )
      ],
    );
  }
}
