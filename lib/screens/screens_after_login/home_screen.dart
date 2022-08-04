import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_practice/custom_widgets/custom_medical_file_card.dart';
import 'package:web_practice/custom_widgets/custom_navi_bar_cards.dart';
import 'package:web_practice/custom_widgets/home_offer_pharnacy_card.dart';
import 'package:web_practice/custom_widgets/home_screen_hmg_service_card.dart';
import 'package:web_practice/custom_widgets/without_login_navigate_screen.dart';
import 'package:web_practice/helper_services/covid19_dialog.dart';
import 'package:web_practice/screens/screens_after_login/emergency_services_screen.dart';
import 'package:web_practice/screens/screens_after_login/home_health_screen.dart';
import 'package:web_practice/screens/screens_without_login/book_appointment_screen.dart';
import 'package:web_practice/screens/screens_without_login/hmg_viewaall_screen.dart';
import 'package:web_practice/screens/screens_without_login/payment_service_screen.dart';
import 'package:web_practice/utils.dart';
import '../../custom_widgets/icon_with_text_card.dart';
import '../screens_without_login/custom_drawer.dart';
import '../screens_without_login/medical_file_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int? index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const BookAppointmentScreen()));
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
                }),
            CustomNavBar(
                iconData: Icons.family_restroom,
                title: 'My Family',
                color: index == 1 ? true : false,
                onTap: () {
                  index = 1;

                  setState(() {});
                }),
            CustomNavBar(
                iconData: Icons.file_copy,
                title: 'Todo List',
                color: index == 2 ? true : false,
                onTap: () {
                  index = 2;

                  setState(() {});
                }),
            CustomNavBar(
                iconData: Icons.help,
                title: 'Help',
                color: index == 3 ? true : false,
                onTap: () {
                  index = 3;

                  setState(() {});
                })
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
          physics: BouncingScrollPhysics(),
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
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                                    Padding(
                                      padding: const EdgeInsets.only(top: 12.0),
                                      child: Row(
                                        children: [
                                          const Padding(
                                            padding:
                                                EdgeInsets.only(right: 5.0),
                                            child: Text(
                                              'Verified',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12.5,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                right: 8.0),
                                            child: Container(
                                              decoration: const BoxDecoration(
                                                  color: Colors.white,
                                                  shape: BoxShape.circle),
                                              child: const Padding(
                                                padding: EdgeInsets.all(0.5),
                                                child: Icon(
                                                  Icons.check,
                                                  size: 12,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 15.0, top: 9, right: 15),
                                  child: Text(
                                    'Faisal Bashir',
                                    style: TextStyle(
                                        height: 1.3,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w800,
                                        fontSize: 18),
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(
                                      left: 15.0, top: 4, right: 15),
                                  child: Text(
                                    'File No: 404114',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 13),
                                  ),
                                ),
                                const Padding(
                                  padding:
                                      EdgeInsets.only(left: 15.0, right: 15),
                                  child: Text(
                                    'July 18,1978,Male 44y',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 13,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )),
                    Positioned(
                      left: 0,
                      right: 0,
                      top: 0,
                      bottom: 0,
                      child: Align(
                        alignment: Alignment.bottomCenter,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconWithTextCard(
                                  text: 'Height CM', iconData: Icons.height),
                              IconWithTextCard(
                                  text: 'Weight Kg',
                                  iconData: Icons.line_weight),
                              IconWithTextCard(
                                text: 'Blood Type',
                                iconData: Icons.bloodtype,
                              ),
                              const Icon(
                                Icons.arrow_forward_outlined,
                                color: Colors.white,
                                size: 20,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(13.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text(
                      'My Medical File',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Text(
                      'View Details',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                          color: Colors.red),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 130,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    CustomMedicalFileCard(
                        color: Color(0xffbd2f2b),
                        text1: 'My',
                        text2: 'Appointments',
                        image: ''),
                    CustomMedicalFileCard(
                        text1: 'Lab', text2: 'Results', image: ''),
                    CustomMedicalFileCard(
                        text1: 'Radiology', text2: 'Result', image: ''),
                    CustomMedicalFileCard(
                        text1: 'Medicines', text2: 'Prescriptions', image: ''),
                    CustomMedicalFileCard(
                        text1: 'My Doctor', text2: 'List', image: ''),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
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
                          const SizedBox(
                            height: 20,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12.0),
                            child: Text(
                              'Offers',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 17),
                            ),
                          ),
                          const Padding(
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
                      onTap: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => HomeHealthScreen()));
                      },
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
                      onTap: () {
                        Navigator.push(
                            context,
                            CupertinoPageRoute(
                                builder: (context) => EmergencyScreen()));
                      },
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
