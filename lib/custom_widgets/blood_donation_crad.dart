import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BloodDonationCard extends StatefulWidget {
  String? title;
  String? mainText;
  Function()? onTap;

  BloodDonationCard({this.title, this.mainText, this.onTap});

  @override
  _BloodDonationCardState createState() => _BloodDonationCardState();
}

class _BloodDonationCardState extends State<BloodDonationCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (widget.onTap),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 5),
                    Text(
                      widget.title!,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(widget.mainText ?? ''),
                        const Icon(Icons.keyboard_arrow_down_outlined)
                      ],
                    ),
                    const SizedBox(height: 3)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
