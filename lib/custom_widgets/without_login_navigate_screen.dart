import 'package:flutter/material.dart';
import 'package:web_practice/custom_widgets/custom_button.dart';
import 'package:web_practice/utils.dart';

class WithoutLoginNavigateScreen extends StatefulWidget {
  String? title, description;

  WithoutLoginNavigateScreen({this.title, this.description});

  @override
  _WithoutLoginNavigateScreenState createState() =>
      _WithoutLoginNavigateScreenState();
}

class _WithoutLoginNavigateScreenState
    extends State<WithoutLoginNavigateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 25),
              Text(
                widget.title!,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              SizedBox(height: 5),
              Text(
                widget.description!,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Spacer(),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: CustomButton(
                  onTap: () {},
                  child: 'Register',
                  btnColor: Colors.red,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
