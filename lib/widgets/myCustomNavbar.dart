import 'package:animationchallenge/model/routeModel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'MyColumns.dart';
import 'myIcons.dart';

class MyCustomNavigationBar extends StatefulWidget {
  const MyCustomNavigationBar({Key? key}) : super(key: key);

  @override
  State<MyCustomNavigationBar> createState() => _MyCustomNavigationBarState();
}

class _MyCustomNavigationBarState extends State<MyCustomNavigationBar>
    with TickerProviderStateMixin {
  int? indexSelection; //to catch selected item
  int? prev; //to catch previos item
  late Animation _animation;

  late AnimationController _controller;

  late List<Widget> _output; // output of MyCustom Nav Bar

  final List<MyIcon> _notSelected = [
    MyIcon(index: 0, icon: Icons.home),
    MyIcon(index: 1, icon: Icons.shield),
    MyIcon(index: 2, icon: Icons.menu)
  ];
  final List<MyColum> _selected = [
    MyColum(
      text: "Home",
      index: 0,
    ),
    MyColum(
      text: "User",
      index: 1,
    ),
    MyColum(
      text: "Menu",
      index: 2,
    )
  ];

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    _output = _notSelected;
    _animation = CurvedAnimation(parent: _controller, curve: Curves.elasticOut);

    _animation.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var model = Provider.of<RouteModel>(context,
        listen: false); //to access model function
    _output = _notSelected.map((e) {
      return GestureDetector(
        child: (e.index != indexSelection
            ? (e.index == prev)
                ? Padding(
                    padding: EdgeInsets.only(top: 20 - _controller.value * 20),
                    child: e,
                  )
                : e
            : Padding(
                padding: EdgeInsets.only(top: 20 - _controller.value * 20),
                child: _selected[e.index])),
        onTap: () {
          if (e.index != indexSelection && e.index != prev) {
            prev = e.index;
          }

          _controller.reverse(from: 1).then((value) {
            prev = indexSelection;
            indexSelection = e.index;
            _controller.forward(from: 0);
            model.setPage(e.index);
          });
        },
      );
    }).toList();

    return Container(
      color: Colors.white,
      height: 60,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround, children: _output),
    );
  }
}
