import 'package:flutter/material.dart';

class WaterTrackerScreen extends StatefulWidget {
  const WaterTrackerScreen({Key? key}) : super(key: key);

  @override
  State<WaterTrackerScreen> createState() => _WaterTrackerScreenState();
}

class _WaterTrackerScreenState extends State<WaterTrackerScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
        title: Text(
          "Water Tracker",
          style: TextStyle(
              fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),
        ),
        // flexibleSpace: Padding(
        //   padding: const EdgeInsets.only(top: 80.0),
        //   child: Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       Text("Today"),
        //       Text("Week"),
        //       Text("Month")
        //     ],
        //   ),
        // ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: Colors.black,
              )),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTabBar(
                  text: "Today",
                  selectedColor: selectedIndex == 0 ? true : false,
                  onTap: () {
                    selectedIndex = 0;
                    setState(() {});
                  },
                ),
                CustomTabBar(
                  text: "Week",
                  selectedColor: selectedIndex == 1 ? true : false,
                  onTap: () {
                    selectedIndex = 1;
                    setState(() {});
                  },
                ),
                CustomTabBar(
                  text: "Month",
                  selectedColor: selectedIndex == 2 ? true : false,
                  onTap: () {
                    selectedIndex = 2;
                    setState(() {});
                  },
                ),
              ],
            ),
            if (selectedIndex == 0)
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 6.0, vertical: 25.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height / 2.2,
                          width: MediaQuery.of(context).size.width / 1.7,
                          padding: EdgeInsets.symmetric(vertical: 18.0),
                          margin: EdgeInsets.symmetric(
                              vertical: 20.0, horizontal: 18.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                end: Alignment.bottomLeft,
                                colors: [Colors.black, Color(0xFF515357)]),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "0mlleft",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14.0),
                              ),
                              Spacer(),
                              Text(
                                "NaN%",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 25.0,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Consumed",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.0,
                                    height: 1.5),
                              )
                            ],
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CustomAddMlWidget(
                              mlText: '600ML',
                            ),
                            CustomAddMlWidget(mlText: '330ML'),
                            CustomAddMlWidget(mlText: '200ML'),
                            SizedBox(
                              height: 3.0,
                            ),
                            Text("Undo",
                                style: TextStyle(
                                    color: Colors.red,
                                    decoration: TextDecoration.underline,
                                    fontWeight: FontWeight.w800)),
                          ],
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Add Custom Amount",
                            style: TextStyle(
                                color: Colors.black87,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w800,
                                height: 3.5),
                          ),
                          Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0)),
                            child: Container(
                              height: 75.0,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 18.0, vertical: 0.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Amount",
                                    style: TextStyle(height: 1.8),
                                  ),
                                  TextField(
                                    decoration: InputDecoration(
                                        contentPadding: EdgeInsets.symmetric(
                                            horizontal: 12.0, vertical: 0.0),
                                        border: InputBorder.none,
                                        hintText: "0"),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            if (selectedIndex == 1)
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)),
                margin: EdgeInsets.symmetric(vertical: 25.0, horizontal: 25.0),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 15.0, top: 12.0, bottom: 12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Water consumed in a week",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600),
                      ),
                      CustomWeekWidget(
                        noText: "100",
                      ),
                      CustomWeekWidget(
                        noText: " 80",
                      ),
                      CustomWeekWidget(
                        noText: " 60",
                      ),
                      CustomWeekWidget(
                        noText: " 20",
                      ),
                      CustomWeekWidget(
                        noText: " 40",
                      ),
                      CustomWeekWidget(
                        noText: "  0",
                        itemColor: true,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: CustomWeekNameWidget(
                              nameText: "SUN",
                            )),
                            Expanded(
                                child: CustomWeekNameWidget(
                              nameText: "SAT",
                            )),
                            Expanded(
                                child: CustomWeekNameWidget(
                              nameText: "FRI",
                            )),
                            Expanded(
                                child: CustomWeekNameWidget(
                              nameText: "THU",
                            )),
                            Expanded(
                                child: CustomWeekNameWidget(
                              nameText: "WED",
                            )),
                            Expanded(
                                child: CustomWeekNameWidget(
                              nameText: "TUE",
                            )),
                            Expanded(
                                child: CustomWeekNameWidget(
                              nameText: "MON",
                            )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            if (selectedIndex == 2)
              Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0)),
                margin: EdgeInsets.symmetric(vertical: 25.0, horizontal: 25.0),
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 15.0, top: 12.0, bottom: 12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Water consumed in a Month",
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600),
                      ),
                      CustomWeekWidget(
                        noText: "100",
                      ),
                      CustomWeekWidget(
                        noText: " 80",
                      ),
                      CustomWeekWidget(
                        noText: " 60",
                      ),
                      CustomWeekWidget(
                        noText: " 20",
                      ),
                      CustomWeekWidget(
                        noText: " 40",
                      ),
                      CustomWeekWidget(
                        noText: "  0",
                        itemColor: true,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                                child: CustomWeekNameWidget(
                              nameText: "SUN",
                            )),
                            Expanded(
                                child: CustomWeekNameWidget(
                              nameText: "SAT",
                            )),
                            Expanded(
                                child: CustomWeekNameWidget(
                              nameText: "FRI",
                            )),
                            Expanded(
                                child: CustomWeekNameWidget(
                              nameText: "THU",
                            )),
                            Expanded(
                                child: CustomWeekNameWidget(
                              nameText: "WED",
                            )),
                            Expanded(
                                child: CustomWeekNameWidget(
                              nameText: "TUE",
                            )),
                            Expanded(
                                child: CustomWeekNameWidget(
                              nameText: "MON",
                            )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}

class CustomTabBar extends StatelessWidget {
  final String text;
  final bool selectedColor;
  final Function()? onTap;

  CustomTabBar({this.text = "", this.selectedColor = false, this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
            child: Text(
              text,
              style: TextStyle(
                  color: selectedColor == true ? Colors.black : Colors.black54,
                  fontWeight: FontWeight.w600,
                  fontSize: 16.0),
            ),
          ),
          Container(
            width: 100.0,
            height: 3.0,
            decoration: BoxDecoration(
                color: selectedColor == true ? Colors.red : Colors.transparent),
          )
        ],
      ),
    );
  }
}

class CustomAddMlWidget extends StatelessWidget {
  final String mlText;

  CustomAddMlWidget({this.mlText = ''});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width / 3.9,
      height: MediaQuery.of(context).size.height / 7,
      margin: EdgeInsets.symmetric(vertical: 5.0),
      decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black12, width: 1.5)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Add",
            style: TextStyle(color: Colors.black87, fontSize: 12.0),
          ),
          Text(
            mlText,
            style: TextStyle(
                color: Colors.black87,
                fontSize: 14.0,
                fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}

class CustomWeekWidget extends StatelessWidget {
  final String noText;
  final bool itemColor;

  CustomWeekWidget({this.noText = '', this.itemColor = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: itemColor == false ? 18.0 : 6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            noText,
            style:
                TextStyle(color: Colors.black87, fontWeight: FontWeight.w500),
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
              height: itemColor == false ? 1.0 : 1.5,
              width: MediaQuery.of(context).size.width / 1.5,
              color: itemColor == false ? Colors.black26 : Color(0xFF32bcca))
        ],
      ),
    );
  }
}

class CustomWeekNameWidget extends StatelessWidget {
  final String nameText;

  CustomWeekNameWidget({this.nameText = ''});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 2.0),
      child: Text(
        nameText,
        style: TextStyle(
            fontSize: 10.0, color: Colors.black87, fontWeight: FontWeight.w600),
      ),
    );
  }
}
