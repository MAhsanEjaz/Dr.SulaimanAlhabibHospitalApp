import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_practice/custom_widgets/home_offer_pharnacy_card.dart';
import 'package:web_practice/custom_widgets/home_screen_hmg_service_card.dart';
import 'package:web_practice/custom_widgets/without_login_navigate_screen.dart';
import 'package:web_practice/helper_services/covid19_dialog.dart';
import 'package:web_practice/screens/custom_drawer.dart';
import 'package:web_practice/screens/hmg_viewaall_screen.dart';
import 'package:web_practice/utils.dart';
import 'payment_service_screen.dart';
import 'welcome_screen.dart';

class HomeScreenWithoutLogin extends StatefulWidget {
  const HomeScreenWithoutLogin({Key? key}) : super(key: key);

  @override
  _HomeScreenWithoutLoginState createState() => _HomeScreenWithoutLoginState();
}

class _HomeScreenWithoutLoginState extends State<HomeScreenWithoutLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation:
          FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: Container(
        height: 85,
        width: 85,
        decoration: const BoxDecoration(
            color: Color(0xffc5272f), shape: BoxShape.circle),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(
              CupertinoIcons.calendar_today,
              color: Colors.white,
            ),
            const Text(
              'Book',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5.0),
              child: Text('Appointment'.toUpperCase(),
                  style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                      fontSize: 10)),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          //children inside bottom appbar
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.menu,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(
                Icons.search,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: IconButton(
                icon: const Icon(
                  Icons.print,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ),
            IconButton(
              icon: const Icon(
                Icons.people,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
        ),
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
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
                        children: const [
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
                        ],
                      ),
                      color2: Colors.grey.withOpacity(0.4),
                      iconData: Icons.lock_outline,
                    ),
                    HomeOfferPharmacyCard(
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
              Wrap(
                children: [
                  HomeScreenHmgCard(
                    onTap: () {
                      Navigator.push(
                          context,
                          CupertinoPageRoute(
                              builder: (context) => WithoutLoginNavigateScreen(
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
                    image: '',
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
                              builder: (context) => PaymentServiceScreen()));
                    },
                    text1: 'Online',
                    image: '',
                    text2: 'Payment',
                  ),
                  HomeScreenHmgCard(
                    text1: 'Home',
                    image: '',
                    text2: 'Health Care',
                  ),
                  HomeScreenHmgCard(
                    text1: 'Checkup',
                    image: '',
                    text2: 'Comprehensive',
                  ),
                  HomeScreenHmgCard(
                    text1: 'Emergency',
                    image: '',
                    text2: 'Services',
                  ),
                  HomeScreenHmgCard(
                    text1: 'E-Refferal',
                    image: '',
                    text2: 'Services',
                  ),
                  HomeScreenHmgCard(
                    text1: 'H0',
                    image: '',
                    text2: 'Daily water check',
                  ),
                  HomeScreenHmgCard(
                    text1: 'Connect',
                    image: '',
                    text2: 'With us',
                  )
                ],
              ),
              const SizedBox(height: 100)
            ],
          ),
        ),
      ),
    );
  }
}
