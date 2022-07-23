import 'package:animationchallenge/Pages/Menu.dart';
import 'package:animationchallenge/Pages/User.dart';
import 'package:animationchallenge/Pages/home.dart';
import 'package:animationchallenge/model/routeModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/myCustomNavbar.dart';

class AnimationChallenge extends StatelessWidget {
  AnimationChallenge({Key? key}) : super(key: key);
  final List<Widget> _pages = [const Home(), const User(), const Menu()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDDDDE0),
      bottomNavigationBar: const MyCustomNavigationBar(),
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back, color: Colors.white),
        centerTitle: true,
        title: const Text(
          "Animated Button navigation bar",
          style: TextStyle(color: Colors.white, fontSize: 17),
        ),
        backgroundColor: const Color(0xffEE3F2A),
      ),
      body: Consumer<RouteModel>(
        builder: (context, value, child) => _pages[value.pageIndex],
      ),
    );
  }
}
