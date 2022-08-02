import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_practice/custom_widgets/custom_list_tile.dart';
import 'package:web_practice/screens/login_screen.dart';
import 'package:web_practice/screens/welcome_screen.dart';

class CustomDrawer extends StatefulWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/LOGI.png'),
                            fit: BoxFit.cover)),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(Icons.close))
                ],
              ),
              SizedBox(height: 20),
              Text(
                'To view your medical profile, please login in or register now',
                style: TextStyle(
                    fontWeight: FontWeight.bold, height: 1.5, fontSize: 19),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Login or Register Now',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 17),
              ),
              SizedBox(
                height: 40,
              ),
              CustomListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => WelcomeScreen()));
                },
                text: 'Login / Register',
                iconData: CupertinoIcons.power,
              ),
              CustomListTile(
                onTap: () {},
                text: 'Privacy Policy',
                iconData: Icons.policy,
              ),
              CustomListTile(
                onTap: () {},
                text: 'Terms & Conditions',
                iconData: Icons.branding_watermark_sharp,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
