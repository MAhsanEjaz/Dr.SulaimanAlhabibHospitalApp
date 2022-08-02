import 'package:flutter/material.dart';

class LoginScreenCard extends StatefulWidget {
  IconData? iconData;
  String? text;
  Function()? onTap;

  LoginScreenCard({Key? key, this.iconData, this.text, this.onTap})
      : super(key: key);

  @override
  _LoginScreenCardState createState() => _LoginScreenCardState();
}

class _LoginScreenCardState extends State<LoginScreenCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: (widget.onTap),
        child: Container(
          height: 150,
          width: MediaQuery.of(context).size.width / 2.3,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.black12)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: 22.0),
                child: Icon(
                  widget.iconData,
                  size: 50,
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(left: 22.0, bottom: 10),
                child: Text(
                  widget.text!,
                  style: const TextStyle(
                      fontSize: 15, fontWeight: FontWeight.bold, height: 1.2),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
