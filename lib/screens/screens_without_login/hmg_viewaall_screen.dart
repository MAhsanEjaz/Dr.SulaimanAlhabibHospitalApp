import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:web_practice/custom_widgets/home_screen_hmg_service_card.dart';
import 'package:web_practice/helper_services/custom_weather_dialog.dart';
import 'package:web_practice/utils.dart';
import '../../helper_services/covid19_dialog.dart';

class HmgViewAllScreen extends StatefulWidget {
  const HmgViewAllScreen({Key? key}) : super(key: key);

  @override
  _HmgViewAllScreenState createState() => _HmgViewAllScreenState();
}

class _HmgViewAllScreenState extends State<HmgViewAllScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      customWeatherDialog(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'HMG Service',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.home))],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150,
                width: double.infinity,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color(0xffffa479),
                  Color(0xfffdb465),
                  Color(0xfffec655)
                ])),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 50),
                          const Text(
                            '--',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 30),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            DateFormat.yMMMMd().format(DateTime.now()),
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          const Text('Health Weather Indicator',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                          const Text('Health Tips Based On Current Weather',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                  fontSize: 11)),
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 28.0),
                      child: Text(
                        'More detail',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                            color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.center,
                child: Wrap(
                  children: [
                    HomeScreenHmgCard(
                      text1: 'Live Care',
                      image: '',
                      text2: 'Online Consulting',
                    ),
                    HomeScreenHmgCard(
                      onTap: () {
                        covid19Dialog(context);
                      },
                      text1: 'COVID-19',
                      image: 'images/corona.png',
                      text2: 'Test',
                    ),
                    HomeScreenHmgCard(
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
                    ),
                    HomeScreenHmgCard(
                      text1: 'My Medical File',
                      image: '',
                      text2: 'Details',
                    ),
                    HomeScreenHmgCard(
                      text1: 'Book',
                      image: '',
                      text2: 'Appointment',
                    ),
                    HomeScreenHmgCard(
                      text1: 'Update',
                      image: '',
                      text2: 'Insurance',
                    ),
                    HomeScreenHmgCard(
                      text1: 'My Family',
                      image: '',
                      text2: 'Files',
                    ),
                    HomeScreenHmgCard(
                      text1: 'My Child',
                      image: '',
                      text2: 'Vaccines',
                    ),
                    HomeScreenHmgCard(
                      text1: 'Todo',
                      image: '',
                      text2: 'List',
                    ),
                    HomeScreenHmgCard(
                      text1: 'Blood',
                      image: '',
                      text2: 'Donation',
                    ),
                    HomeScreenHmgCard(
                      text1: 'Health',
                      image: '',
                      text2: 'Calculator',
                    ),
                    HomeScreenHmgCard(
                      text1: 'Health',
                      image: '',
                      text2: 'Converters',
                    ),
                    HomeScreenHmgCard(
                      text1: 'Smart',
                      image: '',
                      text2: 'Watches',
                    ),
                    HomeScreenHmgCard(
                      text1: 'Car parking',
                      image: '',
                      text2: 'services',
                    ),
                    HomeScreenHmgCard(
                      text1: 'Virtual',
                      image: '',
                      text2: 'Tour',
                    ),
                    HomeScreenHmgCard(
                      text1: 'Latest',
                      image: '',
                      text2: 'News',
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 30)
            ],
          ),
        ),
      ),
    );
  }
}
