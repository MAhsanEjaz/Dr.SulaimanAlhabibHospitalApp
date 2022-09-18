import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_practice/custom_widgets/custom_navi_bar_cards.dart';
import 'package:web_practice/custom_widgets/home_offer_pharnacy_card.dart';
import 'package:web_practice/custom_widgets/home_screen_hmg_service_card.dart';
import 'package:web_practice/custom_widgets/without_login_navigate_screen.dart';
import 'package:web_practice/helper_services/covid19_dialog.dart';
import 'package:web_practice/screens/screens_after_login/medical_file_for_login.dart';
import 'package:web_practice/screens/screens_after_login/my_family_screen.dart';
import 'package:web_practice/screens/screens_without_login/custom_drawer.dart';
import 'package:web_practice/screens/screens_without_login/hmg_viewaall_screen.dart';
import 'package:web_practice/screens/screens_without_login/home_screen_without_login.dart';
import 'package:web_practice/screens/screens_without_login/medical_file_screen.dart';
import 'package:web_practice/screens/screens_without_login/payment_service_screen.dart';
import 'package:web_practice/screens/screens_without_login/verification_screen.dart';
import 'package:web_practice/utils.dart';

import 'home_screen.dart';

class NavbarScreenLoginScreen extends StatefulWidget {
  const NavbarScreenLoginScreen({Key? key}) : super(key: key);

  @override
  _NavbarScreenLoginScreenState createState() =>
      _NavbarScreenLoginScreenState();
}

class _NavbarScreenLoginScreenState extends State<NavbarScreenLoginScreen> {
  int? selectIndex;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      drawer: const Drawer(
        child: CustomDrawer(),
      ),
      appBar: selectIndex == 0
          ? null
          : selectIndex == 1
              ? null
              : selectIndex == 2
                  ? null
                  : selectIndex == 3
                      ? null
                      : AppBar(
                          leading: Builder(
                            builder: (context) => IconButton(
                                onPressed: () {
                                  Scaffold.of(context).openDrawer();
                                  setState(() {});
                                },
                                icon: const Icon(
                                  Icons.sort_rounded,
                                  color: Colors.black,
                                )),
                          ),
                          elevation: 0,
                          backgroundColor: Colors.transparent,
                        ),
      floatingActionButton: selectIndex == 0
          ? null
          : selectIndex == 1
              ? null
              : selectIndex == 2
                  ? null
                  : selectIndex == 3
                      ? null
                      : Container(
                          height: 90,
                          width: 90,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.red.shade900,
                          ),
                          child: Column(
                            children: [
                              const SizedBox(height: 10),
                              const Icon(
                                CupertinoIcons.calendar,
                                color: Colors.white,
                                size: 30,
                              ),
                              Text(
                                'Book'.toUpperCase(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                    color: Colors.white),
                              ),
                              Text(
                                'Appointment'.toUpperCase(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.w300,
                                    fontSize: 11,
                                    color: Colors.white),
                              )
                            ],
                          ),
                        ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: [
            if (selectIndex == null) const HomeScreen(),
            //
            // if (selectIndex == 0)
            //   if (selectIndex == 1)
            //     if (selectIndex == 2)
            //       if (selectIndex == 3)
            //         Container()
            //       else
            //         const SizedBox(
            //             height: 800,
            //             width: double.infinity,
            //             child: const HomeScreenWithoutLogin()),
            if (selectIndex == 0)
              Container(
                  height: MediaQuery.of(context).size.height,
                  child: const MedicalFileScreen()),
            if (selectIndex == 1)
              Container(
                  height: MediaQuery.of(context).size.height,
                  child: const MyFamilyScreen()),
            if (selectIndex == 2)
              Container(
                height: 200,
                width: 200,
                color: Colors.brown,
              ),
            if (selectIndex == 3)
              Container(
                height: 200,
                width: 200,
                color: Colors.yellow,
              ),
          ],
        )),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: SizedBox(
        height: 52,
        child: BottomAppBar(
          elevation: 20,
          shape: const CircularNotchedRectangle(),
          notchMargin: selectIndex == 0 ? 0.0 : 5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            // mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: CustomNavBar(
                  color: selectIndex == 0 ? true : false,
                  title: 'Medical File',
                  onTap: () {
                    selectIndex = 0;
                    setState(() {});
                  },
                  iconData: Icons.insert_drive_file,
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 80.0),
                child: CustomNavBar(
                  color: selectIndex == 1 ? true : false,
                  title: 'My Family',
                  onTap: () {
                    selectIndex = 1;
                    setState(() {});
                  },
                  iconData: Icons.family_restroom,
                ),
              ),
              const Spacer(),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 14.0),
                    child: CustomNavBar(
                      color: selectIndex == 2 ? true : false,
                      title: 'Todo List',
                      onTap: () {
                        selectIndex = 2;
                        setState(() {});
                      },
                      iconData: Icons.today_outlined,
                    ),
                  ),
                  Positioned(
                    right: 17,
                    top: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.red.shade900,
                      ),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          '0',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(right: 22.0),
                child: CustomNavBar(
                  color: selectIndex == 3 ? true : false,
                  title: 'Help',
                  onTap: () {
                    selectIndex = 3;
                    setState(() {});
                  },
                  iconData: Icons.help,
                ),
              ),
              // const Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
