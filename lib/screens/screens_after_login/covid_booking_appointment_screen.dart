import 'package:flutter/material.dart';
import 'package:web_practice/custom_widgets/custom_button.dart';
import 'package:web_practice/custom_widgets/custom_radio_button.dart';
import 'package:web_practice/screens/screens_without_login/practice_screen.dart';
import 'package:web_practice/utils.dart';

class BookingAppointmentScreen extends StatefulWidget {
  const BookingAppointmentScreen({Key? key}) : super(key: key);

  @override
  _BookingAppointmentScreenState createState() =>
      _BookingAppointmentScreenState();
}

class _BookingAppointmentScreenState extends State<BookingAppointmentScreen> {
  String travelRadio = 'Radio';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: Text('Covid-19'),
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
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Booking Appointment for:',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 15)),
                              SizedBox(height: 10),
                              RichText(
                                  text: TextSpan(children: <TextSpan>[
                                TextSpan(
                                    text: 'Patient Name:  ',
                                    style:
                                        TextStyle(fontSize: 9, color: Colors.black45)),
                                TextSpan(
                                    text: 'Ali Rehman:',
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500)),
                              ])),
                              SizedBox(height: 4),
                              RichText(
                                  text: TextSpan(children: <TextSpan>[
                                TextSpan(
                                    text: 'National ID Number:  ',
                                    style:
                                        TextStyle(fontSize: 9, color: Colors.black45)),
                                TextSpan(
                                    text: '32432454354',
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500)),
                              ])),
                              SizedBox(height: 6),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Please answer below questionaire',
                        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      SizedBox(height: 15),
                      Text('Is the test intended for travel?'),
                      Row(
                        children: [
                          CustomRadioButtonWithText(
                              title: 'Yes',
                              groupValue: travelRadio,
                              value: '1',
                              onChanged: (dynamic val) {
                                travelRadio = val;
                                setState(() {});
                              }),
                          CustomRadioButtonWithText(
                              title: 'No',
                              groupValue: travelRadio,
                              value: '2',
                              onChanged: (dynamic val) {
                                travelRadio = val;
                                setState(() {});
                              }),
                        ],
                      ),
                      SizedBox(height: 15),
                      Text('Is the test intended for travel?'),
                      Row(
                        children: [
                          CustomRadioButtonWithText(
                              title: 'Yes',
                              groupValue: travelRadio,
                              value: '1',
                              onChanged: (dynamic val) {
                                travelRadio = val;
                                setState(() {});
                              }),
                          CustomRadioButtonWithText(
                              title: 'No',
                              groupValue: travelRadio,
                              value: '2',
                              onChanged: (dynamic val) {
                                travelRadio = val;
                                setState(() {});
                              }),
                        ],
                      ),
                      SizedBox(height: 15),
                      Text('Is the test intended for travel?'),
                      Row(
                        children: [
                          CustomRadioButtonWithText(
                              title: 'Yes',
                              groupValue: travelRadio,
                              value: '1',
                              onChanged: (dynamic val) {
                                travelRadio = val;
                                setState(() {});
                              }),
                          CustomRadioButtonWithText(
                              title: 'No',
                              groupValue: travelRadio,
                              value: '2',
                              onChanged: (dynamic val) {
                                travelRadio = val;
                                setState(() {});
                              }),
                        ],
                      ),
                      SizedBox(height: 15),
                      Text('Is the test intended for travel?'),
                      Row(
                        children: [
                          CustomRadioButtonWithText(
                              title: 'Yes',
                              groupValue: travelRadio,
                              value: '1',
                              onChanged: (dynamic val) {
                                travelRadio = val;
                                setState(() {});
                              }),
                          CustomRadioButtonWithText(
                              title: 'No',
                              groupValue: travelRadio,
                              value: '2',
                              onChanged: (dynamic val) {
                                travelRadio = val;
                                setState(() {});
                              }),
                        ],
                      ),
                      SizedBox(height: 15),
                      Text('Is the test intended for travel?'),
                      Row(
                        children: [
                          CustomRadioButtonWithText(
                              title: 'Yes',
                              groupValue: travelRadio,
                              value: '1',
                              onChanged: (dynamic val) {
                                travelRadio = val;
                                setState(() {});
                              }),
                          CustomRadioButtonWithText(
                              title: 'No',
                              groupValue: travelRadio,
                              value: '2',
                              onChanged: (dynamic val) {
                                travelRadio = val;
                                setState(() {});
                              }),
                        ],
                      ),
                      SizedBox(height: 15),
                      Text('Is the test intended for travel?'),
                      Row(
                        children: [
                          CustomRadioButtonWithText(
                              title: 'Yes',
                              groupValue: travelRadio,
                              value: '1',
                              onChanged: (dynamic val) {
                                travelRadio = val;
                                setState(() {});
                              }),
                          CustomRadioButtonWithText(
                              title: 'No',
                              groupValue: travelRadio,
                              value: '2',
                              onChanged: (dynamic val) {
                                travelRadio = val;
                                setState(() {});
                              }),
                        ],
                      ),
                      SizedBox(height: 15),
                      Text('Is the test intended for travel?'),
                      Row(
                        children: [
                          CustomRadioButtonWithText(
                              title: 'Yes',
                              groupValue: travelRadio,
                              value: '1',
                              onChanged: (dynamic val) {
                                travelRadio = val;
                                setState(() {});
                              }),
                          CustomRadioButtonWithText(
                              title: 'No',
                              groupValue: travelRadio,
                              value: '2',
                              onChanged: (dynamic val) {
                                travelRadio = val;
                                setState(() {});
                              }),
                        ],
                      ),
                      SizedBox(height: 15),
                      Text('Is the test intended for travel?'),
                      Row(
                        children: [
                          CustomRadioButtonWithText(
                              title: 'Yes',
                              groupValue: travelRadio,
                              value: '1',
                              onChanged: (dynamic val) {
                                travelRadio = val;
                                setState(() {});
                              }),
                          CustomRadioButtonWithText(
                              title: 'No',
                              groupValue: travelRadio,
                              value: '2',
                              onChanged: (dynamic val) {
                                travelRadio = val;
                                setState(() {});
                              }),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            CustomButton(onTap: (){},btnColor: Colors.red,child: 'Next',)
          ],
        ),
      ),
    );
  }
}
