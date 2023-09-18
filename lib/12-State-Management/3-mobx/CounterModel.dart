import 'package:mobx/mobx.dart';

part 'CounterModel.g.dart';

class CounterModel = CounterModelBase with _$CounterModel;

abstract class CounterModelBase with Store {
  @observable
  int counter = 0;

  @action
  void increase() {
    counter++;
  }

  @action
  void decrease() {
    counter--;
  }
}
