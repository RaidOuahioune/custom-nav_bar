import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
          child: Text(
        "Menu",
        style: TextStyle(fontSize: 20),
      )),
    );
  }
}
