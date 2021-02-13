import 'package:bloc/bloc.dart';

enum AppEvent { increment, decrement }

class AppBloc extends Bloc<AppEvent, int> {
  AppBloc() : super(0);

  @override
  Stream<int> mapEventToState(AppEvent event) async* {
    if (AppEvent.increment == event) {
      yield state + 1;
    } else {
      yield state - 1;
    }
  }
}
