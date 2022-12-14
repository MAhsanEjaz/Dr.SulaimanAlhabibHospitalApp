import 'package:flutter/material.dart';

class HomeScreenHmgCard extends StatefulWidget {
  String? image;
  String? text1, text2;
  Function()? onTap;

  HomeScreenHmgCard({Key? key, this.image, this.text1, this.text2, this.onTap})
      : super(key: key);

  @override
  _HomeScreenHmgCardState createState() => _HomeScreenHmgCardState();
}

class _HomeScreenHmgCardState extends State<HomeScreenHmgCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(25),
        onTap: (widget.onTap),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(25),
          child: Container(
            height: 110,
            width: 106,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  const Color(0xffcdcdcd),
                  Colors.grey.withOpacity(0.2)
                ]),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 4,
                      offset: const Offset(1, 2),
                      spreadRadius: 4,
                      blurStyle: BlurStyle.outer)
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 3.0, top: 5),
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(widget.image!),
                            fit: BoxFit.cover)),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Text(
                    widget.text1!,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 13),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 12.0),
                  child: Text(
                    widget.text2!,
                    style: const TextStyle(
                        fontSize: 11, fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(height: 12)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
