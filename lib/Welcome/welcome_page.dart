import 'package:flutter/material.dart';
import 'package:friday_morning/SignIn/signin_page.dart';
import 'package:friday_morning/Welcome/welcome_page_provider.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WelcomePageProvider(
      child: SafeArea(
        child: Stack(
          children: <Widget>[
            Positioned(
              child: _configureLoginAndSignupWidget(context),
              bottom: 30,
              left: 0,
              right: 0,
            ),
          ],
        ),
      ),
    );
  }

  Widget _configureLoginAndSignupWidget(BuildContext context) {
    return Container(
      height: 114,
      padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          _buildLoginWidget(context),
          _buildSingUpWidget(context)
        ],
      ),
    );
  }

  Widget _buildLoginWidget(BuildContext context) {
    return Container(
      height: 52,
      child: Row(
        children: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SignInPage()),
              );
            },
            child: _configureText('로그인'),
          )
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
      decoration: BoxDecoration(
          color: Colors.white54,
          borderRadius: BorderRadius.all(Radius.circular(24))),
    );
  }

  Widget _buildSingUpWidget(BuildContext context) {
    return Container(
      height: 52,
      child: Row(
        children: <Widget>[
          FlatButton(
            onPressed: _signUpButtonTapped,
            child: _configureText('회원가입'),
          )
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),
      decoration: BoxDecoration(
          color: Colors.white54,
          borderRadius: BorderRadius.all(Radius.circular(24))),
    );
  }

  Text _configureText(String text) {
    return Text(
      text,
      style: TextStyle(color: Colors.black87),
    );
  }

  void _signUpButtonTapped() {}
}
