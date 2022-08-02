import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_practice/custom_widgets/custom_button.dart';
import 'package:web_practice/custom_widgets/without_login_navigate_screen.dart';
import 'package:web_practice/utils.dart';

void covid19Dialog(BuildContext context) {
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
                      child: const Icon(Icons.close)),
                ),
                const Text(
                  'User Consent',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
                ),
                const SizedBox(height: 3),
                const Text(
                  'Covid-19 Test features allows you to book an appointment for the'
                  ' Covid-19 Lab test with HMG branches, where a swab sample will be collected & processed,'
                  ' Once the result has been processed, we shall notify you via SMS on your registered mobile number '
                  'and the test result will also be available in this Lab result section of this app.',
                  style: TextStyle(fontSize: 13.5, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                      child: 'Decline',
                      onTap: () {
                        Navigator.of(context).pop(true);
                      },
                      btnColor: const Color(0xffcf2228),
                    ),
                    CustomButton(
                      child: 'Accept',
                      onTap: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) =>
                                    WithoutLoginNavigateScreen(
                                      description: covid19,
                                      title: 'Covid-19',
                                    )));
                      },
                      btnColor: const Color(0xff359846),
                    ),
                  ],
                )
              ],
            ),
          ));
}
