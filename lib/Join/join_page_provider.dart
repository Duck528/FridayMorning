import 'package:flutter/material.dart';
import 'package:friday_morning/Join/join_bloc.dart';

class JoinPageProvider extends InheritedWidget {
  final JoinBloc joinBloc;

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  JoinPageProvider({Key key, JoinBloc joinBloc, Widget child})
      : this.joinBloc = joinBloc ?? JoinBloc(),
        super(key: key, child: child);
}
