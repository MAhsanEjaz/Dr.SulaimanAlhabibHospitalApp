import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:web_practice/custom_widgets/custom_button.dart';
import 'package:web_practice/main.dart';
import 'package:web_practice/screens/screens_after_login/covid_booking_appointment_screen.dart';

class CovidScreen extends StatefulWidget {
  const CovidScreen({Key? key}) : super(key: key);

  @override
  _CovidScreenState createState() => _CovidScreenState();
}

class _CovidScreenState extends State<CovidScreen> {
  List<String> hospitals = [
    'Olaya Hospital',
    'Arruan Hospital',
    'Qasim Hospital',
    'Diplomatic Quater'
  ];

  String selectHospital = 'Select Address';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Covid-19'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Get the result in Few Hours',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                          'We have focused on the provision of innovative and high-quality pathology services, and have expanded into multiple related areas of healthcare. Since our inception, we have delivered healthcare services to our patients with timely results and accurate diagnosis. The lab operates 24 hours a day, every day of the year, ensuring our patients can avail our services at all times.'),
                      const SizedBox(height: 10),
                      Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15)),
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                const Text('Select Location',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold)),
                                DropdownButton(
                                    underline: const SizedBox(),
                                    isExpanded: true,
                                    hint: Text(selectHospital),
                                    items: hospitals.map((e) {
                                      return DropdownMenuItem(
                                          value: e, child: Text(e));
                                    }).toList(),
                                    onChanged: (dynamic val) {
                                      selectHospital = val;
                                      setState(() {});
                                    }),
                              ],
                            ),
                          )),
                      SizedBox(height: 10),
                      if (selectHospital == 'Olaya Hospital')
                        Container(
                          height: 270,
                          width: double.infinity,
                          color: Colors.red,
                          child: GoogleMap(
                              myLocationEnabled: true,
                              myLocationButtonEnabled: true,
                              initialCameraPosition:
                                  CameraPosition(target: LatLng(32434, 343))),
                        )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(
                onTap: () {
                  Navigator.push(
                      context,
                      CupertinoPageRoute(
                          builder: (context) => BookingAppointmentScreen()));
                },
                child: 'Next',
                btnColor: Colors.red,
              ),
            )
          ],
        ),
      ),
    );
  }
}
