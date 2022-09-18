import 'package:flutter/material.dart';

class VerifyCard extends StatefulWidget {
  String? title;
  Function()? onTap;
  Color? color;

  VerifyCard({this.title, this.color,this.onTap});

  @override
  _VerifyCardState createState() => _VerifyCardState();
}

class _VerifyCardState extends State<VerifyCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (widget.onTap),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 150,
              width: MediaQuery.of(context).size.width / 2.4,
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.black12),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(13)),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(''), fit: BoxFit.cover)),
                    ),
                    const Spacer(),
                    const Padding(
                      padding: EdgeInsets.only(left: 8.0),
                      child: Text(
                        'Verify Through',
                        style:
                            TextStyle(fontWeight: FontWeight.w600, fontSize: 17),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Text(
                        widget.title!,
                        style: const TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 17),
                      ),
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 6.5,
            left: 6.5,
            right: 6.5,
            bottom: 6.5,
            child: Container(
              decoration: BoxDecoration(
                  color: widget.color,
                  borderRadius: BorderRadius.circular(13)),
            ),
          )
        ],
      ),
    );
  }
}
