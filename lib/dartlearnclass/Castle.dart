import 'package:dart_demo/dartlearnclass/House.dart';

class Castle extends House {
  int towerNumber;

  Castle({required int windowNumber, required this.towerNumber})
      : super(windowNumber: windowNumber);

}
