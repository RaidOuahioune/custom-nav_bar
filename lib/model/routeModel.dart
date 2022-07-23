import 'package:flutter/widgets.dart';

class RouteModel extends ChangeNotifier {
  int pageIndex = 0;
  void setPage(int index) {
    pageIndex = index;
    notifyListeners();
  }
}
