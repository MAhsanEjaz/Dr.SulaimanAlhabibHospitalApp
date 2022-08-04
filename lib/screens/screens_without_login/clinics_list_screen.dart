import 'package:animated_size_and_fade/animated_size_and_fade.dart';
import 'package:flutter/material.dart';
import 'package:web_practice/utils.dart';

class ClinicListScreen extends StatefulWidget {
  const ClinicListScreen({Key? key}) : super(key: key);

  @override
  _ClinicListScreenState createState() => _ClinicListScreenState();
}

class _ClinicListScreenState extends State<ClinicListScreen> {
  bool isExpand = false;

  List<String> doctor = ['Khobar', 'Arryan', 'Olaya', 'Suwaidi', 'Qassim'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.home))],
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text('Book Appointment'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AnimatedSizeAndFade(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListView.builder(
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Column(
                          children: [
                            ListTile(
                              onTap: () {
                                isExpand = !isExpand;
                                setState(() {});
                              },
                              tileColor: Colors.white,
                              title: Text(
                                doctor[index],
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                              subtitle: const Text(
                                'Hospital - 2420.6 KMs:',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              trailing: isExpand
                                  ? const Icon(Icons.keyboard_arrow_up_outlined)
                                  : const Icon(Icons.keyboard_arrow_down),
                            ),
                            isExpand
                                ? Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 13.0, vertical: 10),
                                    child: Container(
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color: Colors.white),
                                      child: Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              children: const [
                                                Text(
                                                  'DR. HUSSAIN ALMATAR',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                                Text(
                                                  '3/8/2022',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ],
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                const CircleAvatar(),
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.all(8.0),
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Row(
                                                        children: const [
                                                          Text('Clinic:',
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      13)),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 4.0),
                                                            child: Text(
                                                              'Allergy, Asthama and Immunology:',
                                                              style: TextStyle(
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .bold),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(height: 3.0),
                                                      Row(
                                                        children: const [
                                                          Text('Branch:',
                                                              style: TextStyle(
                                                                  fontSize:
                                                                      13)),
                                                          Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 4.0),
                                                            child: Text(
                                                                'Khobar Hospital:'),
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(height: 2.0),
                                                      const Text(
                                                        'Consultant Allergy and Immunology',
                                                        style: TextStyle(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      SizedBox(height: 3.0),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        mainAxisSize:
                                                            MainAxisSize.min,
                                                        children: [
                                                          Row(
                                                            children: const [
                                                              Icon(
                                                                Icons.star,
                                                                color:
                                                                    Colors.red,
                                                                size: 13,
                                                              ),
                                                              Icon(
                                                                Icons.star,
                                                                color:
                                                                    Colors.red,
                                                                size: 13,
                                                              ),
                                                              Icon(
                                                                Icons.star,
                                                                color:
                                                                    Colors.red,
                                                                size: 13,
                                                              ),
                                                              Icon(
                                                                Icons.star,
                                                                color:
                                                                    Colors.red,
                                                                size: 13,
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      )
                                                    ],
                                                  ),
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  )
                                : Container()
                          ],
                        ),
                      );
                    },
                    shrinkWrap: true,
                    itemCount: doctor.length,
                    physics: const NeverScrollableScrollPhysics(),
                  )
                ],
              )),
            ],
          ),
        ),
      ),
    );
  }
}
