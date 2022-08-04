import 'package:flutter/material.dart';
import 'package:web_practice/utils.dart';

class NationalIdNumberScreen extends StatefulWidget {
  const NationalIdNumberScreen({Key? key}) : super(key: key);

  @override
  _NationalIdNumberScreenState createState() => _NationalIdNumberScreenState();
}

class _NationalIdNumberScreenState extends State<NationalIdNumberScreen> {
  List<String> country = ['Saudi Arabia', 'United Arab Emirates'];

  String hint = 'Select Country';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('images/LOGI.png'),
                            fit: BoxFit.cover)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Welcome to',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                        Text(
                          'Dr.Sulaiman Al Habib',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          'Patient App',
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Text(
                  'Please enter mobile number and identification number',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17)),
            ),
            const SizedBox(height: 20),
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
                    const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Country',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: SizedBox(
                        height: 25,
                        child: DropdownButton(
                            itemHeight: 48,
                            hint: Text(hint),
                            underline: const SizedBox(),
                            isExpanded: true,
                            items: country.map((value) {
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black12),
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Phone Number',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.0, vertical: 5),
                      child: SizedBox(
                          height: 25,
                          child: TextField(
                            decoration:
                                InputDecoration(border: InputBorder.none),
                          )),
                    ),
                    SizedBox(height: 13)
                  ],
                ),
              ),
            ),
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
                  children: const [
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'National Id Number',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: SizedBox(
                        height: 25,
                        child: SizedBox(
                            height: 25,
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintText: 'Xxxxxxxxx'),
                            )),
                      ),
                    ),
                    SizedBox(height: 13),
                  ],
                ),
              ),
            ),
            if (hint == 'Saudi Arabia')
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('+966'),
              ),
            if (hint == 'United Arab Emirates')
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('+971'),
              ),
          ],
        ),
      ),
    );
  }
}
