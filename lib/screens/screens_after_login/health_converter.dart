import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_practice/custom_widgets/custom_medical_file_card.dart';
import 'package:web_practice/screens/screens_after_login/blood_sugar_conversion_screen.dart';

class HealthConverterScreen extends StatefulWidget {
  const HealthConverterScreen({Key? key}) : super(key: key);

  @override
  _HealthConverterScreenState createState() => _HealthConverterScreenState();
}

class _HealthConverterScreenState extends State<HealthConverterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Health Converter'),
      ),
      body: SafeArea(
        child: Wrap(
          children: [
            CustomMedicalFileCard(
                text1: 'Blood Sugar',
                text2: 'Sugar',
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => BloodSugarConversionScreen()));
                },
                image: ''),
            CustomMedicalFileCard(
              text1: 'Blood',
              text2: 'Cholesterol',
              onTap: () {},
              image: '',
            ),
            CustomMedicalFileCard(
              text1: 'Triglycerides',
              text2: 'Fat in Blood',
              onTap: () {},
              image: '',
            ),
          ],
        ),
      ),
    );
  }
}
