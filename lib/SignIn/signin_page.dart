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
        body: Stack(
          children: <Widget>[
            Align(
              alignment: AlignmentDirectional.center,
              child: _WelcomeWidget(),
            )
          ],
        ),
      ),
    );
  }
}

class _WelcomeWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _WelcomeWidgetState();
}

class _WelcomeWidgetState extends State<_WelcomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
      height: 260,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _LogoWidget(),
          _spacing(20.1),
          _configureMainTitle('NICKNAME'),
          _spacing(6),
          _configureSubTitle('Pick nickname for display you on Article.'),
          _spacing(15),
          _configureInputText('Nickname')
        ],
      ),
    );
  }

  Widget _configureMainTitle(String text) {
    return Container(
      height: 28,
      child: Text(text, style: TextStyle(color: Colors.black, fontSize: 20)),
    );
  }

  Widget _configureSubTitle(String text) {
    return Container(
      height: 26,
      child: Text(text, style: TextStyle(color: Colors.black, fontSize: 16)),
    );
  }

  Widget _configureInputText(String placehold) {
    return Container(
        height: 74,
        child: TextField(
          style: TextStyle(fontSize: 25),
          decoration: InputDecoration(
            suffixIcon: Icon(Icons.check),
            labelText: 'Nickname',
            labelStyle: TextStyle(fontSize: 22)
          ),
        ));
  }
}

class _LogoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.black,
      ),
    );
  }
}

Container _spacing(double height) {
  return Container(
    height: height,
    color: Colors.transparent,
  );
}
