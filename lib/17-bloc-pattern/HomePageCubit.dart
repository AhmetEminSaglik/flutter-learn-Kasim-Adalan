import 'package:dart_demo/17-bloc-pattern/MathRepository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageCubit extends Cubit<int> {
  HomePageCubit() : super(0);
  var mathRepo = MathRepository();

  void plus(int a, int b) {
    emit(mathRepo.plus(a, b));
  }

  void multiple(int a, int b) {
    emit(mathRepo.multiple(a, b));
  }
}
