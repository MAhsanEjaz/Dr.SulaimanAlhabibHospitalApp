import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_practice/custom_widgets/custom_button.dart';
import 'package:web_practice/custom_widgets/custom_medical_file_card.dart';
import 'package:web_practice/screens/screens_after_login/ambulance_request_screen.dart';

class EmergencyServiceScreen extends StatefulWidget {
  const EmergencyServiceScreen({Key? key}) : super(key: key);

  @override
  _EmergencyServiceScreenState createState() => _EmergencyServiceScreenState();
}

class _EmergencyServiceScreenState extends State<EmergencyServiceScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      showDialog(
          context: context,
          builder: (context) => AlertDialog(
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Confirm',
                      style: const TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Allow the HMG app to access your location will assist you in showing the hospital according to the nearest to you',
                      style: TextStyle(fontSize: 12),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: CustomButton(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: 'Cancel',
                            btnColor: Colors.black38,
                          ),
                        ),
                        Expanded(
                          child: CustomButton(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: 'Confirm',
                            btnColor: Colors.red.shade700,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Emergency Service'),
      ),
      body: SafeArea(
        child: Wrap(
          children: [
            CustomMedicalFileCard(
              text1: 'Ambulance',
              text2: 'Request',
              onTap: () {
                Navigator.push(
                    context,
                    CupertinoPageRoute(
                        builder: (context) => AmbulanceRequestScreen()));
              },
              image: '',
            ),
          ],
        ),
      ),
    );
  }
}
