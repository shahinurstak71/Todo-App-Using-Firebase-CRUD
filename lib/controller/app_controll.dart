import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {
  var count = 0;
  var engineerSallary = 0.0;

  amountTk() {
    count += 100;
    notifyListeners();
  }

  engineersa() {
    //engineerSallary = count/2;

    notifyListeners();
  }
}
