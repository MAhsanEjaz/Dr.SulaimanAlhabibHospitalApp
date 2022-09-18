import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomExpansionTile extends StatefulWidget {

  String? text;
  CustomExpansionTile({Key? key, this.text}) : super(key: key);

  @override
  _CustomExpansionTileState createState() => _CustomExpansionTileState();
}

class _CustomExpansionTileState extends State<CustomExpansionTile> {
  bool isExpand = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
        color: Colors.white,
        child: Column(
          children: [
            ListTile(
              onTap: () {
                isExpand = !isExpand;
                setState(() {});
              },
              title: Text(
                widget.text!,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 19),
              ),
              trailing: isExpand
                  ? const Icon(CupertinoIcons.arrow_uturn_up)
                  : const Icon(CupertinoIcons.arrow_uturn_down),
            ),
            isExpand
                ? Padding(
                    padding:  const EdgeInsets.all(8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Padding(
                                    padding: EdgeInsets.only(left: 8.0),
                                    child: Text(
                                      'Name',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Spacer(),
                                  Padding(
                                    padding: EdgeInsets.only(right: 20.0),
                                    child: Text(
                                      'Allow',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(right: 18.0),
                                    child: Text(
                                      'Reject',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ],
                              ),
                              const Divider(color: Colors.black, thickness: 1),
                              const SizedBox(height: 10)
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                : Container()
          ],
        ),
      ),
    );
  }
}
