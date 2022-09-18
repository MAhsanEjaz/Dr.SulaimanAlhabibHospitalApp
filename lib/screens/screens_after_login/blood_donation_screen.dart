import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:web_practice/custom_widgets/blood_donation_crad.dart';
import 'package:web_practice/custom_widgets/custom_button.dart';
import 'package:web_practice/custom_widgets/custom_dialog.dart';
import 'package:web_practice/custom_widgets/custom_radio_button.dart';
import 'package:web_practice/dialogs/gender_data.dart';
import 'package:web_practice/services/page_route_service.dart';
import 'package:web_practice/utils.dart';

class BloodDonationScreen extends StatefulWidget {
  const BloodDonationScreen({Key? key}) : super(key: key);

  @override
  _BloodDonationScreenState createState() => _BloodDonationScreenState();
}

class _BloodDonationScreenState extends State<BloodDonationScreen> {
  bool termCheck = false;

  String radio = 'Radio';

  String? genderRadio = 'Gender';

  String? selectCityy;

  String? gender;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    gender;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 15.0),
            child: Icon(Icons.home),
          )
        ],
        title: const Text('Blood Donattion'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(height: 20),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          'Enter the required information, in order to register for Blood Donation Service',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 17),
                        ),
                      ),
                      const SizedBox(height: 20),
                      BloodDonationCard(
                          mainText: selectCityy ?? 'Select City',
                          onTap: () {
                            PageNavigationService().pageNavigation(
                                context,
                                BloodDonationDialog(
                                  selectCity: selectCityy.toString(),
                                  radio: radio,
                                ));
                          },
                          title: 'City'),
                      BloodDonationCard(
                          title: 'Gender',
                          onTap: () {
                            PageNavigationService().pageNavigation(
                                context,
                                CustomDialog(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      GenderData(
                                        gender: gender.toString(),
                                      )
                                    ],
                                  ),
                                ));
                          },
                          mainText: gender ?? ''),
                      BloodDonationCard(
                          title: 'Blood Type', onTap: () {}, mainText: ''),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 18.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              'To view the terms and condition',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(
                              'Click here',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      CheckboxListTile(
                        controlAffinity: ListTileControlAffinity.leading,
                        value: termCheck,
                        activeColor: appColor,
                        onChanged: (value) {
                          termCheck = value!;
                          setState(() {});
                        },
                        title: const Text(
                          'I agree the terms and conditions',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              CustomButton(
                onTap: termCheck == true ? () {} : null,
                child: 'Save',
                btnColor: termCheck == true ? appColor : Colors.black26,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class BloodDonationDialog extends StatefulWidget {
  String? selectCity;

  String? radio;

  BloodDonationDialog({Key? key, this.selectCity, this.radio})
      : super(key: key);

  @override
  _BloodDonationDialogState createState() => _BloodDonationDialogState();
}

class _BloodDonationDialogState extends State<BloodDonationDialog> {
  // String radio = 'Radio';

  // String? selectCity;

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaY: 2, sigmaX: 3),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    CustomRadioButtonWithText(
                      title: 'Riyadh',
                      groupValue: widget.radio,
                      value: '1',
                      onChanged: (dynamic val) {
                        widget.radio = val;
                        widget.selectCity = 'Riyadh';
                        setState(() {});
                      },
                    ),
                    CustomRadioButtonWithText(
                      title: 'Jeddah',
                      groupValue: widget.radio,
                      value: '2',
                      onChanged: (dynamic val) {
                        widget.radio = val;
                        widget.selectCity = 'Jeddah';
                        setState(() {});
                      },
                    ),
                    CustomRadioButtonWithText(
                      title: 'Mecca',
                      groupValue: widget.radio,
                      value: '3',
                      onChanged: (dynamic val) {
                        widget.radio = val;
                        widget.selectCity = 'Mecca';

                        setState(() {});
                      },
                    ),
                    CustomRadioButtonWithText(
                      title: 'Medina',
                      groupValue: widget.radio,
                      value: '4',
                      onChanged: (dynamic val) {
                        widget.radio = val;
                        widget.selectCity = 'Medina';

                        setState(() {});
                      },
                    ),
                    CustomRadioButtonWithText(
                      title: 'Dammam',
                      groupValue: widget.radio,
                      value: '5',
                      onChanged: (dynamic val) {
                        widget.radio = val;
                        widget.selectCity = 'Dammam';

                        setState(() {});
                      },
                    ),
                    Text(widget.selectCity ?? ''),
                    CustomButton(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      btnColor: Colors.green.shade500,
                      child: 'Save',
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
