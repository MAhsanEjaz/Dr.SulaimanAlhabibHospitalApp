import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_practice/custom_widgets/custom_navi_bar_cards.dart';
import 'package:web_practice/custom_widgets/home_offer_pharnacy_card.dart';
import 'package:web_practice/custom_widgets/home_screen_hmg_service_card.dart';
import 'package:web_practice/custom_widgets/without_login_navigate_screen.dart';
import 'package:web_practice/helper_services/covid19_dialog.dart';
import 'package:web_practice/screens/screens_without_login/book_appointment_screen.dart';
import 'package:web_practice/screens/screens_without_login/hmg_viewaall_screen.dart';
import 'package:web_practice/screens/screens_without_login/welcome_screen.dart';
import 'package:web_practice/utils.dart';
import 'custom_drawer.dart';
import 'medical_file_screen.dart';
import 'payment_service_screen.dart';

class HomeScreenWithoutLogin extends StatefulWidget {
  const HomeScreenWithoutLogin({Key? key}) : super(key: key);

  @override
  _HomeScreenWithoutLoginState createState() => _HomeScreenWithoutLoginState();
}

class _HomeScreenWithoutLoginState extends State<HomeScreenWithoutLogin> {
  int? index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => BookAppointmentScreen()));
          },
          child: const Icon(Icons.add)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomNavBar(
              iconData: Icons.file_copy,
              title: 'Medical File',
              color: index == 0 ? true : false,
              onTap: () {
                index = 0;
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const MedicalFileScreen()));

                setState(() {});
              },
            ),
            CustomNavBar(
              iconData: Icons.family_restroom,
              title: 'My Family',
              color: index == 1 ? true : false,
              onTap: () {
                index = 1;

                setState(() {});
              },
            ),
            CustomNavBar(
              iconData: Icons.file_copy,
              title: 'Todo List',
              color: index == 2 ? true : false,
              onTap: () {
                index = 2;

                setState(() {});
              },
            ),
            CustomNavBar(
              iconData: Icons.help,
              title: 'Help',
              color: index == 3 ? true : false,
              onTap: () {
                index = 3;

                setState(() {});
              },
            ),
          ],
        ),
      ),
      drawer: const Drawer(
        child: CustomDrawer(),
      ),
      backgroundColor: backgroundColor,
      appBar: AppBar(
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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14.0),
                child: Stack(
                  children: [
                    Container(
                      height: 130,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: const Color(0xff2a363c),
                          borderRadius: BorderRadius.circular(20)),
                    ),
                    Positioned(
                        top: 0,
                        bottom: 0,
                        left: 0,
                        right: 0,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                              bottomRight: Radius.circular(90)),
                          child: Container(
                            decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [Colors.black26, Colors.white10])),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 12.0),
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(6),
                                        topRight: Radius.circular(10),
                                        bottomRight: Radius.circular(10)),
                                    child: Container(
                                      height: 20,
                                      width: 100,
                                      decoration: const BoxDecoration(
                                          color: Color(0xffbd2f2b)),
                                      child: const Center(
                                        child: Text(
                                          'Medical File',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Colors.white,
                                              fontSize: 12),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 15.0, top: 9, right: 15),
                                  child: Text(
                                    'To view your medical profile, please \n log in or register now',
                                    style: TextStyle(
                                        height: 1.3,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 18),
                                  ),
                                ),
                                const SizedBox(
                                  height: 6,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 14.0,
                                  ),
                                  child: SizedBox(
                                    height: 30,
                                    child: ElevatedButton(
                                      onPressed: () async {
                                        showDialog(
                                            barrierColor: Colors.transparent,
                                            context: context,
                                            builder: (context) => AlertDialog(
                                                  elevation: 0,
                                                  backgroundColor:
                                                      Colors.transparent,
                                                  content: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: const [
                                                      CupertinoActivityIndicator(
                                                        radius: 20,
                                                      )
                                                    ],
                                                  ),
                                                ));
                                        await Future.delayed(
                                            const Duration(seconds: 4));
                                        Navigator.pop(context);

                                        Navigator.push(
                                            context,
                                            CupertinoPageRoute(
                                                builder: (context) =>
                                                    const WelcomeScreen()));
                                      },
                                      style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(10.0)),
                                          primary: const Color(0xffbd2f2b)),
                                      child: const Text('Login'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 100,
                width: double.infinity,
                color: Colors.white,
                child: Row(
                  children: [
                    HomeOfferPharmacyCard(
                      color: const Color(0xffe2e4e1),
                      color1: const Color(0xff44494f),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12.0),
                            child: Text(
                              'Offers',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12.0),
                            child: Text(
                              'Explore Now',
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              CustomImageContainer(image: 'images/ear.png'),
                              CustomImageContainer(
                                image: 'images/head.png',
                              ),
                              CustomImageContainer(
                                image: 'images/teeth.png',
                              ),
                            ],
                          )
                        ],
                      ),
                      // color2: Colors.grey.withOpacity(0.4),
                      images: '',
                    ),
                    HomeOfferPharmacyCard(
                      images: 'images/ecommerce.png',
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Spacer(),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12.0),
                            child: Text(
                              'Online Pharmacy',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12.0),
                            child: Text(
                              'Ecommerce Solution',
                              style: TextStyle(
                                  fontSize: 11, fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          )
                        ],
                      ),
                      color: const Color(0xffe2e4e1),
                      color1: const Color(0xff2f9a48),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'HMG Service',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) =>
                                    const HmgViewAllScreen()));
                      },
                      child: const Text(
                        'View All Services',
                        style: TextStyle(
                            color: Colors.red, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Wrap(
                  children: [
                    HomeScreenHmgCard(
                      onTap: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) =>
                                    WithoutLoginNavigateScreen(
                                      title: 'LiveCare',
                                      description:
                                          'This service allows you to make an online virtual consultation'
                                          ' via video call directly with the doctor from anywhere at any time',
                                    )));
                      },
                      text1: 'Live Care',
                      image: '',
                      text2: 'Online Consulting',
                    ),
                    HomeScreenHmgCard(
                      text1: 'COVID-19',
                      image: 'images/corona.png',
                      onTap: () {
                        covid19Dialog(context);
                      },
                      text2: 'Test',
                    ),
                    HomeScreenHmgCard(
                      onTap: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) =>
                                    const PaymentServiceScreen()));
                      },
                      text1: 'Online',
                      image: '',
                      text2: 'Payment',
                    ),
                    HomeScreenHmgCard(
                      text1: 'Home',
                      image: 'images/home.png',
                      text2: 'Health Care',
                    ),
                    HomeScreenHmgCard(
                      text1: 'Checkup',
                      image: 'images/checkup.png',
                      text2: 'Comprehensive',
                    ),
                    HomeScreenHmgCard(
                      text1: 'Emergency',
                      image: 'images/emergency.png',
                      text2: 'Services',
                    ),
                    HomeScreenHmgCard(
                      text1: 'E-Refferal',
                      image: 'images/erefferal.png',
                      text2: 'Services',
                    ),
                    HomeScreenHmgCard(
                      text1: 'H0',
                      image: 'images/h20.png',
                      text2: 'Daily water check',
                    ),
                    HomeScreenHmgCard(
                      text1: 'Connect',
                      image: 'images/connect.png',
                      text2: 'With us',
                    )
                  ],
                ),
              ),
              const SizedBox(height: 100)
            ],
          ),
        ),
      ),
    );
  }
}

class CustomImageContainer extends StatefulWidget {
  String? image;

  CustomImageContainer({Key? key, this.image}) : super(key: key);

  @override
  _CustomImageContainerState createState() => _CustomImageContainerState();
}

class _CustomImageContainerState extends State<CustomImageContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(widget.image!), fit: BoxFit.cover)),
    );
  }
}

// AnimatedBottomNavigationBar(
// backgroundColor: Colors.white,
// notchMargin: 4,
// gapLocation: GapLocation.center,
// notchSmoothness: NotchSmoothness.verySmoothEdge,
// leftCornerRadius: 1,
// rightCornerRadius: 1,
// activeColor: Colors.red,
// inactiveColor: Colors.black,
// icons: const [
// Icons.description,
// Icons.family_restroom,
// Icons.today_outlined,
// Icons.help
// ],
// onTap: (int) {
// setState(() {
// index = int;
// });
// },
// activeIndex: index!),
