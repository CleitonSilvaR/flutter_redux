import 'package:rx_notifier/rx_notifier.dart';

class AppStore {
  var counter = RxNotifier(0);

  increment() {
    counter.value++;
  }
}
