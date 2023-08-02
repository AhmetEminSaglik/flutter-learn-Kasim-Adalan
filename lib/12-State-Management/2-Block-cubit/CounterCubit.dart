import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  int counter = 0;

  CounterCubit() : super(0);

  int readCounter() {
    return counter;
  }

  void increaseCounter() {
    counter++;
    emit(counter);
  }

  void decreaseCounter() {
    counter--;
    emit(counter);
  }
}
