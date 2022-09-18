import 'package:flutter/material.dart';
import 'package:web_practice/custom_widgets/custom_button.dart';
import 'package:web_practice/custom_widgets/custom_expansion_tile.dart';
import 'package:web_practice/utils.dart';

class MyFamilyScreen extends StatefulWidget {
  const MyFamilyScreen({Key? key}) : super(key: key);

  @override
  _MyFamilyScreenState createState() => _MyFamilyScreenState();
}

class _MyFamilyScreenState extends State<MyFamilyScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 2, vsync: this);

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        title: const Text('My Family Files'),
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  TabBar(
                    indicatorWeight: 3,
                    indicatorColor: appColor,
                    labelStyle: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                    labelColor: Colors.black,
                    controller: tabController,
                    tabs: const [
                      Tab(child: Text('My Family')),
                      Tab(child: Text('Request'))
                    ],
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    child: TabBarView(controller: tabController, children: [
                      Column(
                        children: const [
                          Center(
                              child: Text(
                            'No Record Found',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ))
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                      ),
                      Column(
                        children:  [
                          const SizedBox(
                            height: 20,
                          ),
                          CustomExpansionTile(text: 'User Wants to View Your Medical File',),
                          CustomExpansionTile(text: 'Send Request',),
                          CustomExpansionTile(text: 'User Can View Your Medical File',),
                        ],
                      ),
                    ]),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CustomButton(
              btnColor: Colors.red.shade900,
              onTap: () {},
              child: 'Add Family Member',
            ),
          )
        ],
      ),
    );
  }
}
