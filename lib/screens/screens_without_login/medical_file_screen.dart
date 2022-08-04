import 'package:flutter/material.dart';
import 'package:web_practice/custom_widgets/custom_button.dart';
import 'package:web_practice/custom_widgets/custom_medical_file_card.dart';
import 'package:web_practice/utils.dart';

class MedicalFileScreen extends StatefulWidget {
  const MedicalFileScreen({Key? key}) : super(key: key);

  @override
  _MedicalFileScreenState createState() => _MedicalFileScreenState();
}

class _MedicalFileScreenState extends State<MedicalFileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Medical File',
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.home))],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(color: Color(0xff2b353e)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 13.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 30),
                      Text(
                        'Appointments',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                      SizedBox(height: 2),
                      Text(
                        'Timeline',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.white),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'To view your medical profile, please \n log in or register now',
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        height: 40,
                        child: CustomButton(
                          onTap: () {},
                          child: 'Login',
                          btnColor: Colors.red,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Medical File',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
              ),
              SizedBox(height: 20),
              Align(
                alignment: Alignment.center,
                child: Wrap(
                  children: [
                    CustomMedicalFileCard(
                      text1: 'My',
                      text2: 'Appointments',
                      image: '',
                    ),
                    CustomMedicalFileCard(
                      text1: 'Lab',
                      text2: 'Results',
                      image: '',
                    ),
                    CustomMedicalFileCard(
                      text1: 'Radiology',
                      text2: 'Results',
                      image: '',
                    ),
                    CustomMedicalFileCard(
                      text1: 'Medicines',
                      text2: 'Prescriptions',
                      image: '',
                    ),
                    CustomMedicalFileCard(
                      text1: 'Vital Signs',
                      text2: 'Reports',
                      image: '',
                    ),
                    CustomMedicalFileCard(
                      text1: 'Active',
                      text2: 'Medications',
                      image: '',
                    ),
                    CustomMedicalFileCard(
                      text1: 'My Doctor',
                      text2: 'List',
                      image: '',
                    ),
                    CustomMedicalFileCard(
                      text1: 'My Invoice',
                      text2: 'List',
                      image: '',
                    ),
                    CustomMedicalFileCard(
                      text1: 'Ancillary Order',
                      text2: 'List',
                      image: '',
                    ),
                    CustomMedicalFileCard(
                      text1: 'Eye',
                      text2: 'Measurement',
                      image: '',
                    ),
                    CustomMedicalFileCard(
                      text1: 'Insurance',
                      text2: 'Card',
                      image: '',
                    ),
                    CustomMedicalFileCard(
                      text1: 'Update',
                      text2: 'Insurance',
                      image: '',
                    ),
                    CustomMedicalFileCard(
                      text1: 'Insurance',
                      text2: 'Approvals',
                      image: '',
                    ),
                    CustomMedicalFileCard(
                      text1: 'Allergies',
                      text2: 'List',
                      image: '',
                    ),
                    CustomMedicalFileCard(
                      text1: 'My',
                      text2: 'Vaccines List',
                      image: '',
                    ),
                    CustomMedicalFileCard(
                      text1: 'Medical',
                      text2: 'Report',
                      image: '',
                    ),
                    CustomMedicalFileCard(
                      text1: 'Monthly',
                      text2: 'Report',
                      image: '',
                    ),
                    CustomMedicalFileCard(
                      text1: 'Sick',
                      text2: 'Leaves',
                      image: '',
                    ),
                    CustomMedicalFileCard(
                      text1: 'My Balance',
                      text2: 'Credit',
                      image: '',
                    ),
                    CustomMedicalFileCard(
                      text1: 'My Trackers',
                      text2: 'Service',
                      image: '',
                    ),
                    CustomMedicalFileCard(
                      text1: 'Pairing',
                      text2: 'Smart Watches',
                      image: '',
                    ),
                    CustomMedicalFileCard(
                      text1: 'Doctor',
                      text2: 'Ask Your',
                      image: '',
                    ),
                    CustomMedicalFileCard(
                      text1: 'Internet',
                      text2: 'Pairing',
                      image: '',
                    ),
                    CustomMedicalFileCard(
                      text1: 'Chatbox',
                      text2: '',
                      image: '',
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
