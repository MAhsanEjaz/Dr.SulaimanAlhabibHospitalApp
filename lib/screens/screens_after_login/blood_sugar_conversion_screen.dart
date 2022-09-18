import 'package:flutter/material.dart';
import 'package:web_practice/custom_widgets/custom_button.dart';
import 'package:web_practice/utils.dart';

class BloodSugarConversionScreen extends StatefulWidget {
  const BloodSugarConversionScreen({Key? key}) : super(key: key);

  @override
  _BloodSugarConversionScreenState createState() =>
      _BloodSugarConversionScreenState();
}

class _BloodSugarConversionScreenState
    extends State<BloodSugarConversionScreen> {
  int select = 0;

  String? calculate;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text('Blood Sugar Conversion'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 10),
                      Text(
                        'Blood Sugar',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 19),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Convert blood sugar/gulocose from mmol/i (UK standard) to mg/dlt (US standard) and vise versa',
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 15),
                      ),
                      SizedBox(height: 23),
                      Text(
                        'Convert from',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          ConvertCard(
                              text: 'MG/DLT to MMOL/L ',
                              color: select == 0 ? true : false,
                              onTap: () {
                                select = 0;
                                setState(() {});
                              }),
                          Spacer(),
                          ConvertCard(
                              text: 'MMOL/L to MG/DLT ',
                              color: select == 1 ? true : false,
                              onTap: () {
                                select = 1;
                                setState(() {});
                              }),
                        ],
                      ),
                      SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text('Enter the reading value',
                                  style:
                                      TextStyle(fontWeight: FontWeight.bold)),
                            ),
                            TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  alignLabelWithHint: true,
                                  // hintStyle: TextStyle(height: .1),
                                  hintText: '0.0',
                                  // floatingLabelAlignment: FloatingLabelAlignment.center,
                                  // floatingLabelBehavior: FloatingLabelBehavior.never,
                                  // label: Text('Enter the reading value'),
                                  contentPadding: EdgeInsets.only(left: 10)),
                            ),
                          ],
                        ),
                      ),
                      // Text(calculate ?? '')
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(
                onTap: () {
                  calculate = '54548154';
                  setState(() {});
                },
                child: 'Calculate',
                btnColor: Colors.green.shade700,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ConvertCard extends StatefulWidget {
  bool color;
  Function()? onTap;
  String? text;

  ConvertCard({required this.color, this.onTap, this.text});

  @override
  _ConvertCardState createState() => _ConvertCardState();
}

class _ConvertCardState extends State<ConvertCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (widget.onTap),
      child: Expanded(
        child: Card(
          elevation: 0,
          shape: RoundedRectangleBorder(
              side: BorderSide(
                  width: 2,
                  color: widget.color
                      ? Colors.green.shade700
                      : Colors.transparent),
              borderRadius: BorderRadius.circular(5)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0, vertical: 13),
            child: Text(
              widget.text!,
              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
            ),
          ),
        ),
      ),
    );
  }
}
