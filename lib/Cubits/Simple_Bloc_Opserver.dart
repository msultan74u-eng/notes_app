



import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SimpleBlocOpserver implements BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    // TODO: implement onChange

    // debugPrint('${bloc.runtimeType} $change');
    debugPrint('change → $bloc');
  }

  @override
  void onClose(BlocBase bloc) {
    // TODO: implement onClose
    debugPrint('close → $bloc');

  }

  @override
  void onCreate(BlocBase bloc) {
    // TODO: implement onCreate
    debugPrint('create → $bloc');

  }

  @override
  void onDone(Bloc bloc, Object? event, [Object? error, StackTrace? stackTrace]) {
    // TODO: implement onDone
    debugPrint('done → $bloc');

  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // TODO: implement onError
    debugPrint('error → $bloc');

  }

  @override
  void onEvent(Bloc bloc, Object? event) {
    // TODO: implement onEvent
    debugPrint('event → $bloc');

  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    // TODO: implement onTransition
    debugPrint('transition → $bloc');

  }

}