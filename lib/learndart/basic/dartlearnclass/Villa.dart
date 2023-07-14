
import 'House.dart';

class Villa extends House {
  bool hasGarage;

  Villa({required int windowNumber, required this.hasGarage})
      : super(windowNumber: windowNumber);
}
