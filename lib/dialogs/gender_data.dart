import 'package:flutter/material.dart';
import 'package:web_practice/custom_widgets/custom_button.dart';
import 'package:web_practice/custom_widgets/custom_radio_button.dart';
import 'package:web_practice/screens/screens_after_login/blood_donation_screen.dart';
import 'package:web_practice/services/page_route_service.dart';

class GenderData extends StatefulWidget {
  String? gender;

  GenderData({Key? key, this.gender}) : super(key: key);

  @override
  _GenderDataState createState() => _GenderDataState();
}

class _GenderDataState extends State<GenderData> {
  String genderRadio = 'gender';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      widget.gender;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomRadioButtonWithText(
            title: 'Male',
            onChanged: (dynamic val) {
              genderRadio = val;
              widget.gender = 'Male'.toString();
              setState(() {});
            },
            value: '1',
            groupValue: genderRadio),
        CustomRadioButtonWithText(
            title: 'Female',
            onChanged: (dynamic val) {
              setState(() {
                genderRadio = val;
                widget.gender = 'Female'.toString();
              });
            },
            value: '2',
            groupValue: genderRadio),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomButton(
            child: 'Save',
            btnColor: Colors.green.shade500,
            onTap: () {
              Navigator.pop(context);
            },
          ),
        )
      ],
    );
  }
}
