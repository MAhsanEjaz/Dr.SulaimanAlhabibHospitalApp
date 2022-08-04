import 'package:flutter/material.dart';
import 'package:web_practice/custom_widgets/payment_service_card.dart';
import 'package:web_practice/utils.dart';

class PaymentServiceScreen extends StatefulWidget {
  const PaymentServiceScreen({Key? key}) : super(key: key);

  @override
  _PaymentServiceScreenState createState() => _PaymentServiceScreenState();
}

class _PaymentServiceScreenState extends State<PaymentServiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Payment Service',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.home))],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Align(
              alignment: Alignment.center,
              child: Wrap(
                children: [
                  PaymentServiceCard(
                    text: 'Payment Service',
                  ),
                  PaymentServiceCard(
                    text: 'Online Check-Appointment',
                  ),
                  PaymentServiceCard(
                    text: 'Al Habib \nWallet',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
