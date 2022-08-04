import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_practice/custom_widgets/custom_button.dart';
import 'package:web_practice/screens/screens_without_login/clinics_list_screen.dart';
import 'package:web_practice/utils.dart';

class BookAppointmentScreen extends StatefulWidget {
  const BookAppointmentScreen({Key? key}) : super(key: key);

  @override
  _BookAppointmentScreenState createState() => _BookAppointmentScreenState();
}

class _BookAppointmentScreenState extends State<BookAppointmentScreen>
    with TickerProviderStateMixin {
  bool check1 = false;

  String? selectClinic;

  String hint = 'Select Hospital';

  List<String> clinicsName = [
    'Aesthetic Gynecology',
    'ALLERGY CENTER',
    'Breastfeeding Clinic',
    'Clinical Nutrition',
    'DENTAL CLINIC',
    'Dental Cosmetic clinic'
  ];

  List<String> hospitals = [
    'Qasim Hospital',
    'Aryan Hospital',
    'Diplomatic Quater',
    'Dubai Medical City Hospital',
    'Khobar Hospital',
    'Olaya Hospital',
    'Swadi Hospital'
  ];

  @override
  Widget build(BuildContext context) {
    TabController defaultTabController = TabController(length: 2, vsync: this);

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.home))],
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text('Book Appointment'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              height: 60,
              child: TabBar(
                physics: const NeverScrollableScrollPhysics(),
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 2.5,
                labelColor: Colors.black,
                labelStyle: const TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 17.5),
                indicatorColor: const Color(0xffbd2f2b),
                controller: defaultTabController,
                tabs: const [
                  Tab(text: 'Clinic Name'),
                  Tab(
                    text: 'Doctor Name',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              child: TabBarView(
                  physics: const NeverScrollableScrollPhysics(),
                  controller: defaultTabController,
                  children: [
                    SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Checkbox(
                                  activeColor: Colors.red,
                                  value: check1,
                                  onChanged: (value) {
                                    check1 = value!;
                                    setState(() {});
                                  }),
                              const Text('Nearest Appointment'),
                            ],
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 10.0),
                            child: InkWell(
                              onTap: () {
                                showDialog(
                                    context: context,
                                    builder: (context) => AlertDialog(
                                          content: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              ListView.builder(
                                                itemBuilder: (context, index) {
                                                  return Padding(
                                                    padding: const EdgeInsets
                                                            .symmetric(
                                                        vertical: 10.0),
                                                    child: InkWell(
                                                        onTap: () async {
                                                          showDialog(
                                                              context: context,
                                                              builder:
                                                                  (context) =>
                                                                      AlertDialog(
                                                                        content: Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.min,
                                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                                            children: const [
                                                                              CircularProgressIndicator()
                                                                            ]),
                                                                      ));

                                                          await Future.delayed(
                                                              const Duration(
                                                                  seconds: 3));
                                                          Navigator.of(context)
                                                              .pop(true);

                                                          Navigator.push(
                                                              context,
                                                              CupertinoPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          const ClinicListScreen()));

                                                          selectClinic =
                                                              clinicsName[
                                                                  index];
                                                          setState(() {});
                                                        },
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .all(8.0),
                                                          child: Text(
                                                            clinicsName[index],
                                                            style:
                                                                const TextStyle(
                                                                    fontSize:
                                                                        14),
                                                          ),
                                                        )),
                                                  );
                                                },
                                                shrinkWrap: true,
                                                itemCount: clinicsName.length,
                                              )
                                            ],
                                          ),
                                        ));
                              },
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const SizedBox(height: 5),
                                      const Text(
                                        'Select Clinic',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                      const SizedBox(height: 2),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            selectClinic ?? '',
                                            style: const TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          const Icon(Icons.arrow_drop_down)
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 5.0,
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 5.0),
                          if (check1)
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.black12),
                                    borderRadius: BorderRadius.circular(10)),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    const SizedBox(height: 8.0),
                                    const Padding(
                                      padding: EdgeInsets.only(left: 10),
                                      child: Text(
                                        'Country',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 15),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: SizedBox(
                                        height: 25,
                                        child: DropdownButton(
                                            itemHeight: 48,
                                            hint: Text(
                                              hint,
                                              style:
                                                  const TextStyle(fontSize: 13),
                                            ),
                                            underline: const SizedBox(),
                                            isExpanded: true,
                                            items: hospitals.map((value) {
                                              return DropdownMenuItem(
                                                alignment: Alignment.centerLeft,
                                                onTap: () {
                                                  setState(() {
                                                    hint = value;
                                                  });
                                                },
                                                child: Text(value),
                                                value: value,
                                              );
                                            }).toList(),
                                            onChanged: (_) {}),
                                      ),
                                    ),
                                    const SizedBox(height: 13)
                                  ],
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 15.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    height: 30,
                                  ),
                                  const Text(
                                    'Type the name of the doctor to help you find him',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  const SizedBox(height: 20),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: const [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 13.0, vertical: 10),
                                          child: Text(
                                            'Enter Doctor name',
                                            style: TextStyle(
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 30,
                                          child: TextField(
                                            decoration: InputDecoration(
                                                contentPadding: EdgeInsets.only(
                                                    left: 12, bottom: 24),
                                                border: InputBorder.none),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                            height: 50,
                            width: double.infinity,
                            child: CustomButton(
                              onTap: () {},
                              child: 'Search',
                              btnColor: Colors.red,
                            ))
                      ],
                    )
                  ]),
            )
          ],
        ),
      ),
    );
  }
}
