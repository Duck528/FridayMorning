import 'package:flutter/material.dart';
import 'package:friday_morning/SignIn/signin_page_provider.dart';

class SignInPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return SignInPageProvider(
      child: Scaffold(
        body: SafeArea(
          child: Stack(children: <Widget>[
            Align(alignment: AlignmentDirectional.center, child: _LoginWidget())
          ]),
        ),
      ),
    );
  }
}

class _BackgroundWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
    );
  }
}

class _LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return null;
  }
}

class _LoginWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360,
      child: Column(
        children: <Widget>[_IDInputWidget(), _PWInputWidget()],
      ),
    );
  }
}

class _IDInputWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: TextField(),
      decoration: BoxDecoration(color: Colors.blue),
    );
  }
}

class _PWInputWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      child: TextField(),
      decoration: BoxDecoration(color: Colors.blue),
    );
  }
}

class _LoginButton extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return null;
  }
}