import 'package:flutter/material.dart';

import '../../custom_widgets/custom_radio_button.dart';
import '../../utils.dart';

class RapidResponseTeamScreen extends StatefulWidget {
  const RapidResponseTeamScreen({Key? key}) : super(key: key);

  @override
  _RapidResponseTeamScreenState createState() =>
      _RapidResponseTeamScreenState();
}

class _RapidResponseTeamScreenState extends State<RapidResponseTeamScreen> {
  String value1 = '';

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          backgroundColor: backgroundColor,
          appBar: AppBar(
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.home))
            ],
            title: const Text('Rapid Response Team'),
            bottom: const TabBar(
              indicatorWeight: 2.5,
              indicatorColor: Color(0xffbd2f2b),
              indicatorSize: TabBarIndicatorSize.tab,
              labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
              labelColor: Colors.black,
              tabs: [
                Tab(
                  text: 'Rapid Response Team',
                ),
                Tab(
                  text: 'Order Log',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15.0, vertical: 13),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(rapidResponseText,
                        style:
                            TextStyle(height: 2, fontWeight: FontWeight.w500)),

                    CustomRadioButtonWithText(
                      text: value1,
                      onChanged: (value) {
                        value1 == value;
                        setState(() {});
                      },
                      text2: '',
                    )
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [],
              )
            ],
          ),
        ));
  }
}
