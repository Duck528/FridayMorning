import 'package:flutter/material.dart';
import 'package:friday_morning/SignIn/signin_bloc.dart';

class SignInPageProvider extends InheritedWidget {
  final SignInBloc signinBloc;
  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => true;

  SignInPageProvider({Key key, Widget child, SignInBloc signinBloc})
      : this.signinBloc = signinBloc ?? SignInBloc(),
        super(key: key, child: child);
}
