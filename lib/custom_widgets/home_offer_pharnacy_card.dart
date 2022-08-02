import 'package:flutter/material.dart';

class HomeOfferPharmacyCard extends StatefulWidget {
  Color? color, color1, color2;
  Widget? child;
  IconData? iconData;

  HomeOfferPharmacyCard(
      {this.color, this.color1, this.child, this.color2, this.iconData});

  @override
  _HomeOfferPharmacyCardState createState() => _HomeOfferPharmacyCardState();
}

class _HomeOfferPharmacyCardState extends State<HomeOfferPharmacyCard> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(color: widget.color1),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(80),
                    bottomLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20)),
                child: Container(
                  decoration: BoxDecoration(color: widget.color),
                  child: widget.child,
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: 0,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  color: widget.color2,
                  child: Center(child: Icon(widget.iconData,size: 40,)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
