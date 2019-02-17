import 'package:flutter/material.dart';
import 'package:friday_morning/Home/home_bloc.dart';

class HomePageProvider extends InheritedWidget {
  final HomeBloc homeBloc;
  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  static HomeBloc of(BuildContext context) { 
    var homeProvider = context.inheritFromWidgetOfExactType(HomePageProvider) as HomePageProvider;
    return homeProvider.homeBloc;
  }

  HomePageProvider({Key key, HomeBloc homeBloc, Widget child})
      : this.homeBloc = homeBloc ?? HomeBloc(),
        super(key: key, child: child);
}
