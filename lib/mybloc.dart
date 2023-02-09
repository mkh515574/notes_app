import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

class MyBlocObserver extends BlocObserver {

  @override
  void onChange(BlocBase bloc, Change change) {

    debugPrint('$change = $change');
    super.onChange(bloc, change);
  }

  @override
  void onCreate(BlocBase bloc) {
    debugPrint('close = $bloc');

    super.onCreate(bloc);
  }

  @override
  void onClose(BlocBase bloc) {
    debugPrint('close = $bloc');
    super.onClose(bloc);
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    print("onError");
    super.onError(bloc, error, stackTrace);
  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    print("onEvent");
    super.onEvent(bloc, event);
  }
}