//Todas Actions e States devem ser classes
import 'package:flutter_redux/redux/store.dart';

enum AppAction { increment, decrement }

//Todas classes dos estados são imutaveis, caso precise "ALTERAR O VALOR"
//é necessário criar outro objeto com os valores novos
//Aqui no caso é necessário criar uma classe NomeState com os campos/valores
//que você gostaria de controlar da tela
class AppState {
  final int value;

  AppState({this.value = 0});

  // sobrescrevendo os operadores 😳
  operator +(int valueParam) {
    return AppState(value: value + valueParam);
  }

  operator -(int valueParam) {
    return AppState(value: value - valueParam);
  }

  @override
  String toString() {
    return '$value';
  }
}

AppState _reducer(AppState state, AppAction action) {
  if (AppAction.increment == action) {
    // return AppState(value: state.value + 1);
    return state + 1;
  } else {
    // return AppState(value: state.value - 1);
    return state - 1;
  }
}

final appStore =
    Store<AppAction, AppState>(initialState: AppState(), reducer: _reducer);
