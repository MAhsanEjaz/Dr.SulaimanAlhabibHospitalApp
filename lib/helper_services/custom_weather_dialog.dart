import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_practice/custom_widgets/custom_button.dart';

import '../screens/login_screen.dart';

void customWeatherDialog(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) => AlertDialog(
            content: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                    alignment: Alignment.topRight,
                    child: InkWell(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(Icons.close))),
                const Text(
                  'User Consent',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  'Dr. Al Habib app collects location data to show the nearest'
                  ' HMG hospitals and ER Locations and provides health care services to your'
                  ' location and Health weather indicators services and the medication services',
                  style: TextStyle(fontSize: 12),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    CustomButton(
                      child: 'Decline',
                      onTap: () {},
                      btnColor: const Color(0xffcf2228),
                    ),
                    CustomButton(
                      child: 'Accept',
                      onTap: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => const LoginScreen()));
                      },
                      btnColor: const Color(0xff359846),
                    ),
                  ],
                )
              ],
            ),
          ));
}
