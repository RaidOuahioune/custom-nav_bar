import 'package:flutter/material.dart';

class User extends StatelessWidget {
  const User({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Center(
          child: Text(
        "User",
        style: TextStyle(fontSize: 20),
      )),
    );
  }
}
