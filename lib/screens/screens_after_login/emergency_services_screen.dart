import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_practice/custom_widgets/custom_medical_file_card.dart';
import 'package:web_practice/screens/screens_after_login/rapid_response_team_screen.dart';

class EmergencyScreen extends StatefulWidget {
  const EmergencyScreen({Key? key}) : super(key: key);

  @override
  _EmergencyScreenState createState() => _EmergencyScreenState();
}

class _EmergencyScreenState extends State<EmergencyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.home))],
        title: const Text('Emergency Services'),
      ),
      body: SafeArea(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          Align(
            alignment: Alignment.center,
            child: Wrap(
              children: [
                CustomMedicalFileCard(
                  text1: 'Ambulance',
                  text2: 'Request',
                  image: '',
                ),
                CustomMedicalFileCard(
                  text1: 'Nearest ER',
                  text2: 'Location',
                  image: '',
                ),
                CustomMedicalFileCard(
                  onTap: () {
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) =>
                                const RapidResponseTeamScreen()));
                  },
                  text1: 'ERT',
                  text2: 'Service',
                  image: '',
                ),
                CustomMedicalFileCard(
                  text1: 'ED',
                  text2: 'Service',
                  image: '',
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
