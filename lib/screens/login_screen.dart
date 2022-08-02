import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_practice/custom_widgets/custom_button.dart';
import 'package:web_practice/custom_widgets/login_screen_file_card.dart';
import 'package:web_practice/screens/nation_id_number_screen.dart';
import 'package:web_practice/utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
      ),
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('images/LOGI.png'),
                                    fit: BoxFit.cover)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'Welcome to',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 12),
                                ),
                                Text(
                                  'Dr.Sulaiman Al Habib',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Patient App',
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 18.0),
                      child: Text(
                        'Choose from the below options to login to your medical file.',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                            height: 1.4),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Wrap(
                        children: [
                          LoginScreenCard(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    CupertinoPageRoute(
                                        builder: (context) =>
                                            const NationalIdNumberScreen()));
                              },
                              text: 'National ID \nNumber',
                              iconData: CupertinoIcons.sidebar_left),
                          LoginScreenCard(
                            onTap: (){},
                              text: 'Medical File \nNumber',
                              iconData: CupertinoIcons.folder_fill_badge_minus),
                        ],
                      ),
                    ),
                    const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 19.0, vertical: 15),
                      child: Text(
                        'Forget File Number?',
                        style: TextStyle(
                            color: Colors.red,
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 58,
                width: double.infinity,
                child: CustomButton(
                  onTap: () {},
                  child: 'Register Now',
                  btnColor: Colors.red,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
