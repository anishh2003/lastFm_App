import 'package:flutter/material.dart';

class Data extends ChangeNotifier {
  String searchTermEntered = 'believe';

  void changeString(String newString) {
    searchTermEntered = newString;
    notifyListeners();
  }
}
