import 'package:flutter/material.dart';

class PracticeScreen extends StatefulWidget {
  const PracticeScreen({Key? key}) : super(key: key);

  @override
  _PracticeScreenState createState() => _PracticeScreenState();
}

class _PracticeScreenState extends State<PracticeScreen> {
  String? data;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('kdjflk'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [CustomData()],
        ),
      ),
    );
  }
}

class CustomData extends StatefulWidget {
  @override
  _CustomDataState createState() => _CustomDataState();
}

class _CustomDataState extends State<CustomData> {
  String radio = 'radio';
  String? text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ElevatedButton(
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [NewData(text: text ?? '')],
                        ),
                      ));
            },
            child: Text('slkdjdlfjldk')),
        Text(
          text ?? 'sddf',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        )
      ],
    );
  }
}

class NewData extends StatefulWidget {
  String? text;

  NewData({this.text});

  @override
  _NewDataState createState() => _NewDataState();
}

class _NewDataState extends State<NewData> {
  String radio = 'radio';
  int? select;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Radio(
                value: '1',
                groupValue: radio,
                onChanged: (dynamic val) {
                  radio = val;
                  widget.text == 'Male';
                  setState(() {});
                }),
            Radio(
                value: '2',
                groupValue: radio,
                onChanged: (dynamic val) {
                  widget.text == 'Female';

                  radio = val;
                  setState(() {});
                }),

            // CustomRadio(
            //   Color: select == 1 ? true : false,
            //   onTap: () {
            //     select = 1;
            //     widget.text = 'Male';
            //     setState(() {});
            //   },
            // ),
            // CustomRadio(
            //   Color: select == 2 ? true : false,
            //   onTap: () {
            //     select = 2;
            //     widget.text = 'Male';
            //
            //     setState(() {});
            //   },
            // ),
            // CustomRadio(
            //   Color: select == 3 ? true : false,
            //   onTap: () {
            //     select = 3;
            //     widget.text = 'sdsMale';
            //
            //     setState(() {});
            //   },
            // ),
          ],
        ),
        Text(widget.text ?? ''),
        ElevatedButton(
            onPressed: () {
              widget.text = widget.text;
              setState(() {});
              Navigator.pop(context);
            },
            child: Text(''))
      ],
    );
  }
}

class CustomRadio extends StatefulWidget {
  bool Color;
  Function()? onTap;

  CustomRadio({required this.Color, this.onTap});

  @override
  _CustomRadioState createState() => _CustomRadioState();
}

class _CustomRadioState extends State<CustomRadio> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (widget.onTap),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 30,
          width: 30,
          decoration: BoxDecoration(
              border: Border.all(
                  color: widget.Color ? Colors.black12 : Colors.yellow),
              color: widget.Color ? Colors.red : Colors.black12),
        ),
      ),
    );
  }
}
