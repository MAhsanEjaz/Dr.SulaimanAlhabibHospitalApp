import 'package:flutter/material.dart';

class HomeScreenHmgCard extends StatefulWidget {
  String? image;
  String? text1, text2;
  Function()? onTap;

  HomeScreenHmgCard({Key? key, this.image, this.text1, this.text2, this.onTap}) : super(key: key);

  @override
  _HomeScreenHmgCardState createState() => _HomeScreenHmgCardState();
}

class _HomeScreenHmgCardState extends State<HomeScreenHmgCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: InkWell(
        onTap: (widget.onTap),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(18),
          child: Container(
            height: 105,
            width: 106,
            decoration: const BoxDecoration(color: Color(0xffcdcdcd), boxShadow: [
              BoxShadow(
                  color: Colors.white,
                  blurRadius: 4,
                  offset: Offset(1, 5),
                  spreadRadius: 4,
                  blurStyle: BlurStyle.outer)
            ]),
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
                        image:
                            DecorationImage(image: AssetImage(widget.image!))),
                  ),
                  const Spacer(),
                  Text(
                    widget.text1!,
                    style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                  Text(
                    widget.text2!,
                    style: const TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(height: 5)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
