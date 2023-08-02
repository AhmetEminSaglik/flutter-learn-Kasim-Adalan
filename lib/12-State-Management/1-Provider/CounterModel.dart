import 'package:flutter/cupertino.dart';

class CounterModel extends ChangeNotifier {
  int counter = 0;

  int readCounter() {
    return counter;
  }

  void increaseCounter() {
    counter++;
    notifyListeners();
  }

  void decreaseCounter() {
    counter--;
    notifyListeners();
  }
}
