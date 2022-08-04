import 'package:flutter/material.dart';
import 'package:web_practice/custom_widgets/home_heatlh_widget.dart';
import 'package:web_practice/utils.dart';

class HomeHealthScreen extends StatefulWidget {
  const HomeHealthScreen({Key? key}) : super(key: key);

  @override
  _HomeHealthScreenState createState() => _HomeHealthScreenState();
}

class _HomeHealthScreenState extends State<HomeHealthScreen>
    with TickerProviderStateMixin {
  bool check1 = false;
  bool check2 = false;
  bool check3 = false;
  bool check4 = false;
  bool check5 = false;
  bool check6 = false;
  bool check7 = false;
  bool check8 = false;
  bool check9 = false;

  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text('Home Health Care'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.home))],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TabBar(
                      indicatorWeight: 2.5,
                      indicatorColor: Colors.red,
                      labelColor: Colors.black,
                      labelStyle:
                          const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                      controller: tabController,
                      tabs: const [
                        Tab(
                          text: 'Home Health Care',
                        ),
                        Tab(
                          text: 'Order Log',
                        ),
                      ]),
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: TabBarView(controller: tabController, children: [
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            HomeHealthWidget(
                                text: 'Dressing',
                                onChanged: (value) {},
                                value: check1),
                            HomeHealthWidget(
                              text: 'Injection',
                              onChanged: (value) {},
                              value: check2,
                            ),
                            HomeHealthWidget(
                              text: 'Covid 19 Swab',
                              onChanged: (value) {},
                              value: check3,
                            ),
                            HomeHealthWidget(
                              text: 'Intravenous Fluids',
                              onChanged: (value) {},
                              value: check4,
                            ),
                            HomeHealthWidget(
                              text: 'Er Services',
                              onChanged: (value) {},
                              value: check5,
                            ),
                            HomeHealthWidget(
                              text: 'Bed Side Nurse',
                              onChanged: (value) {},
                              value: check6,
                            ),
                            HomeHealthWidget(
                              text: 'Dictation',
                              onChanged: (value) {},
                              value: check7,
                            ),
                            HomeHealthWidget(
                              text: 'Optometrist',
                              onChanged: (value) {},
                              value: check8,
                            ),
                            HomeHealthWidget(
                              text: 'Ecg',
                              onChanged: (value) {},
                              value: check9,
                            ),
                          ]),
                      Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const []),
                    ]),
                  )
                ],
              ),
            ),
          ),
          Container(
            color: Colors.white,
            width: double.infinity,
            height: 55,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                style:
                    ElevatedButton.styleFrom(primary: Colors.red, elevation: 0),
                child: const Text('Next'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
