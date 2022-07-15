import 'package:flutter/material.dart';

import '../bloc/home_bloc.dart';

class HomeProvider extends InheritedWidget {
  final bloc = HomeBloc();

  HomeProvider({Key? key, required Widget child,})
      : super(key: key, child: child);

  @override
  bool updateShouldNotify(_) {
    return true;
  }

  static HomeBloc of(BuildContext context) {
    final HomeProvider? result = context.dependOnInheritedWidgetOfExactType<HomeProvider>();
    return result!.bloc;
  }
}
