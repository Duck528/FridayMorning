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
          child: Stack(
            children: <Widget>[
              Align(
                alignment: AlignmentDirectional.center,
                child: _WelcomeWidget(),
              ),
              Positioned(
                child: _NestStepWidget(),
                bottom: 0,
                left: 0,
                right: 0,
              )
            ],
          ),
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
          _configureMainTitle('ID'),
          _spacing(6),
          _configureSubTitle('Pick id for display you on friday morning.'),
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
              labelText: 'Enter your id',
              labelStyle: TextStyle(fontSize: 22)),
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

class _NestStepWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            right: 0,
            bottom: 0,
            width: 200,
            child: Container(
              color: Colors.black,
              child: _configureNextButton(),
            ),
          )
        ],
      ),
    );
  }

  Widget _configureNextButton() {
    return Stack(
      children: <Widget>[
        Positioned(
          top: 16,
          left: 30,
          bottom: 17,
          child: Text(
            'NEXT',
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
        ),
        Positioned(
          top: 16,
          bottom: 16,
          right: 24,
          child: Icon(
            Icons.arrow_forward_ios,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}

Container _spacing(double height) {
  return Container(
    height: height,
    color: Colors.transparent,
  );
}
