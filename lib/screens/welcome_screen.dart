import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_practice/custom_widgets/custom_button.dart';
import 'package:web_practice/screens/login_screen.dart';
import 'package:web_practice/utils.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(

        elevation: 0,
        backgroundColor: backgroundColor,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.home,
                color: Colors.black,
              ))
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 25,
              ),
              Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/LOGI.png'),
                        fit: BoxFit.cover)),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Welcome',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Have you previously visited the hospitals or \nmedical centers of Dr.Sulaiman Al Habib?',
                style: TextStyle(
                    fontWeight: FontWeight.w600, fontSize: 17, height: 1.6),
              ),
              const Spacer(),
              Row(
                children: [
                  CustomButton(
                    child: 'No',
                    onTap: () {},
                    btnColor: const Color(0xffcf2228),
                  ),
                  CustomButton(
                    child: 'Yes',
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => LoginScreen()));
                    },
                    btnColor: const Color(0xff359846),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
