import 'package:flutter/material.dart';
import 'package:friday_morning/Welcome/welcome_bloc.dart';

class WelcomePageProvider extends InheritedWidget {
  final WelcomeBloc welcomeBloc;

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  WelcomePageProvider({Key key, Widget child, WelcomeBloc welcomeBloc})
      : this.welcomeBloc = welcomeBloc ?? WelcomeBloc(),
        super(key: key, child: child);
}
