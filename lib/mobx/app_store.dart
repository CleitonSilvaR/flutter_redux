import 'package:mobx/mobx.dart';

class AppStore {
  var counter = Observable(0);
  Action increment;

  AppStore() {
    increment = Action(_increment);
  }

  _increment() {
    counter.value++;
  }
}
