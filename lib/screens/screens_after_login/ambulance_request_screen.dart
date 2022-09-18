import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:web_practice/custom_widgets/custom_button.dart';

class AmbulanceRequestScreen extends StatefulWidget {
  const AmbulanceRequestScreen({Key? key}) : super(key: key);

  @override
  _AmbulanceRequestScreenState createState() => _AmbulanceRequestScreenState();
}

class _AmbulanceRequestScreenState extends State<AmbulanceRequestScreen>
    with TickerProviderStateMixin {
  int selctIndex = 0;

  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);

    return Scaffold(
      appBar: AppBar(
        title: Text('Ambulance Request'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 45,
              child: TabBar(
                  indicatorColor: Colors.red.shade900,
                  indicatorWeight: 3,
                  labelColor: Colors.black,
                  controller: tabController,
                  tabs: [
                    Tab(text: 'Ambulance Request'),
                    Tab(text: 'Order Log'),
                  ]),
            ),
            SizedBox(
              height: WidgetsBinding.instance.window.physicalSize.height / 2.4,
              child: TabBarView(controller: tabController, children: [
                Column(
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  containerWithIcon(pageController == 0
                                      ? Colors.yellow
                                      : Colors.green),
                                  containerWithIcon(pageController == 2
                                      ? Colors.green
                                      : Colors.black),
                                  containerWithIcon(pageController == 3
                                      ? Colors.green
                                      : Colors.black),
                                  containerWithIcon(pageController == 4
                                      ? Colors.green
                                      : Colors.black),
                                ],
                              ),
                              SizedBox(
                                height: 500,
                                child: PageView(
                                  controller: pageController,
                                  children: [
                                    Column(
                                      children: [
                                        Container(
                                          height: 200,
                                          width: 200,
                                          color: Colors.brown,
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          height: 200,
                                          width: 200,
                                          color: Colors.brown,
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          height: 200,
                                          width: 200,
                                          color: Colors.brown,
                                        )
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Container(
                                          height: 200,
                                          width: 200,
                                          color: Colors.brown,
                                        )
                                      ],
                                    ),
                                  ],
                                ),
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
                          pageController.nextPage(
                              duration: Duration(seconds: 2),
                              curve: Curves.bounceIn);
                          setState(() {});
                        },
                        child: 'Next',
                        btnColor: Colors.red.shade900,
                      ),
                    )
                  ],
                ),
                Column(
                  children: [],
                )
              ]),
            )
          ],
        ),
      ),
    );
  }

  containerWithIcon(Color color) {
    return Expanded(
      child: Row(
        children: [
          Container(
              decoration: BoxDecoration(shape: BoxShape.circle, color: color),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Icon(Icons.check, color: Colors.white),
              )),
          Expanded(
            child: Container(
              height: 1,
              width: 20,
              decoration: BoxDecoration(color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
