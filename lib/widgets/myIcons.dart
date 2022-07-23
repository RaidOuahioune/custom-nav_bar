import 'package:flutter/material.dart';

class MyIcon extends StatelessWidget {
  int index;
  IconData icon;
  MyIcon({Key? key, required this.index, required this.icon}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 6.6, left: 6.6),
      child: Icon(
        icon,
        color: const Color(0xff9D9D9D),
      ),
    );
  }
}
