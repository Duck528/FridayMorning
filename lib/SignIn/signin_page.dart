import 'package:flutter/material.dart';
import 'package:friday_morning/SignIn/signin_page_provider.dart';
import 'package:friday_morning/Util/fonts.dart';
import 'package:friday_morning/Util/spacing.dart';
import 'package:friday_morning/Welcome/welcome_page.dart';

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
                child: _SignInWidget(),
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

class _SignInWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SignInWidgetState();
}

class _SignInWidgetState extends State<_SignInWidget> {
  bool _idEntered = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
      height: 334,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _LogoWidget(),
          spacing(20.1),
          _configureMainTitle('Login'),
          spacing(6),
          _configureSubTitle('Pick id for display you on friday morning.'),
          spacing(15),
          _configureInputID('Enter ID'),
          _idEntered
              ? _configureInputPW('Enter Password', context)
              : Container()
        ],
      ),
    );
  }

  Widget _configureMainTitle(String text) {
    return Container(
      height: 28,
      child: Text(text, style: notoSansBoldFont(20, Colors.black)),
    );
  }

  Widget _configureSubTitle(String text) {
    return Container(
      height: 26,
      child: Text(text,
          style: notoSansRegularFont(16, Color.fromRGBO(102, 102, 102, 1))),
    );
  }

  Widget _configureInputID(String placehold) {
    return Container(
        height: 74,
        child: TextField(
          onSubmitted: (text) {
            setState(() {
              _idEntered = true;
            });
          },
          cursorColor: Colors.black,
          style: notoSansBoldFont(24, Colors.black),
          decoration: InputDecoration(
              suffixIcon: Icon(
                Icons.check,
                color: Color.fromRGBO(222, 222, 222, 1),
              ),
              labelText: placehold,
              enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromRGBO(222, 222, 222, 1))),
              focusedBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromRGBO(222, 222, 222, 1))),
              labelStyle:
                  notoSansBoldFont(22, Color.fromRGBO(222, 222, 222, 1))),
        ));
  }

  Widget _configureInputPW(String placehold, BuildContext context) {
    return Container(
        height: 74,
        child: TextField(
          obscureText: true,
          onSubmitted: (text) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => WelcomePage()));
          },
          cursorColor: Colors.black,
          style: notoSansBoldFont(24, Colors.black),
          decoration: InputDecoration(
              suffixIcon: Icon(
                Icons.check,
                color: Color.fromRGBO(222, 222, 222, 1),
              ),
              labelText: placehold,
              enabledBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromRGBO(222, 222, 222, 1))),
              focusedBorder: UnderlineInputBorder(
                  borderSide:
                      BorderSide(color: Color.fromRGBO(222, 222, 222, 1))),
              labelStyle:
                  notoSansBoldFont(22, Color.fromRGBO(222, 222, 222, 1))),
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
              child: _configureNextButton(context),
            ),
          )
        ],
      ),
    );
  }

  Widget _configureNextButton(BuildContext context) {
    return FlatButton(
        highlightColor: Colors.white70,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (BuildContext context) => WelcomePage()));
        },
        child: Stack(children: <Widget>[
          Positioned(
              top: 16,
              left: 30,
              bottom: 17,
              child: Text(
                'NEXT',
                style: notoSansBoldFont(17, Colors.white),
              )),
          Positioned(
            top: 16,
            bottom: 16,
            right: 24,
            child: Icon(
              Icons.arrow_forward_ios,
              color: Colors.white,
            ),
          )
        ]));
  }
}

class _WarningWidget extends StatelessWidget {
  final String _invalidIdMessage = 'The ID is not valid';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36,
      child: Text(
        _invalidIdMessage,
        style: notoSansRegularFont(15, Colors.white),
      ),
    );
  }
}
