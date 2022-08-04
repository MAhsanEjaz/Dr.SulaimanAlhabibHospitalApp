import 'package:flutter/material.dart';

class CustomMedicalFileCard extends StatefulWidget {
  String? image;
  Color? color;
  String? text1, text2;
  Function()? onTap;

  CustomMedicalFileCard({Key? key, this.image, this.text1, this.text2,this.color,this.onTap})
      : super(key: key);

  @override
  _CustomMedicalFileCardState createState() => _CustomMedicalFileCardState();
}

class _CustomMedicalFileCardState extends State<CustomMedicalFileCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (widget.onTap),
      child: Stack(
        children: [
          Padding(
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
                              image: AssetImage(widget.image!),
                              fit: BoxFit.cover),
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
          ),
          Positioned(
            right: 14,
            top: 15,
            child: Container(
              height: 25,
              width: 25,
              decoration:
                  BoxDecoration(color: widget.color, shape: BoxShape.circle),
              child: Center(
                child: Text(
                  '0',
                  style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
