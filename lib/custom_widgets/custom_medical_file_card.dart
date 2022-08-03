import 'package:flutter/material.dart';

class CustomMedicalFileCard extends StatefulWidget {
  String? image;
  String? text1, text2;

  CustomMedicalFileCard({Key? key, this.image, this.text1, this.text2})
      : super(key: key);

  @override
  _CustomMedicalFileCardState createState() => _CustomMedicalFileCardState();
}

class _CustomMedicalFileCardState extends State<CustomMedicalFileCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          height: 112,
          width: 108,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: Colors.black26)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(widget.image!), fit: BoxFit.cover),
                  ),
                ),
                const Spacer(),
                Text(
                  widget.text1!,
                  style: const TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 12),
                ),
                Text(widget.text2!,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 12)),
                const SizedBox(height: 10)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
