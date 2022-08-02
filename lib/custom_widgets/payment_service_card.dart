import 'package:flutter/material.dart';

class PaymentServiceCard extends StatefulWidget {
  String? text;

  PaymentServiceCard({Key? key, this.text}) : super(key: key);

  @override
  _PaymentServiceCardState createState() => _PaymentServiceCardState();
}

class _PaymentServiceCardState extends State<PaymentServiceCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 105,
          width: 100,
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black26),
              borderRadius: BorderRadius.circular(10),
              color: Colors.white),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Spacer(),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  widget.text!,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
