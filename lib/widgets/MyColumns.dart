import 'package:flutter/material.dart';

class MyColum extends StatelessWidget {
  MyColum({Key? key, required this.text, required this.index})
      : super(key: key);
  String text;
  int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            text,
            style:
                const TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 5),
          child: Container(
            width: 6,
            height: 6,
            decoration: BoxDecoration(
                color: Colors.red, borderRadius: BorderRadius.circular(30)),
          ),
        ),
      ],
    );
  }
}
