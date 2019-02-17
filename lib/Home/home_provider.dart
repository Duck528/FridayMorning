import 'package:flutter/material.dart';
import 'package:friday_morning/Home/home_bloc.dart';

class HomeProvider extends InheritedWidget {
  final HomeBloc homeBloc;
  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static HomeBloc of(BuildContext context) { 
    var homeProvider = context.inheritFromWidgetOfExactType(HomeProvider) as HomeProvider;
    return homeProvider.homeBloc;
  }

  HomeProvider({Key key, HomeBloc homeBloc, Widget child})
      : this.homeBloc = homeBloc ?? HomeBloc(),
        super(key: key, child: child);
}
