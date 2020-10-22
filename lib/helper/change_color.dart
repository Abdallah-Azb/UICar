import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProvedClass extends ChangeNotifier {
  int indexBar = 0;

  onclick(int value) {
    indexBar = value;
    notifyListeners();
  }
}
