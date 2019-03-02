import 'package:flutter/material.dart';
import 'package:friday_morning/Util/fonts.dart';
import 'package:friday_morning/Util/spacing.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 7,
              left: 12,
              child: _configureAppBar(context),
            ),
            Positioned(
              top: 200,
              left: 30,
              right: 30,
              child: Wrap(
                alignment: WrapAlignment.center,
                children: <Widget>[
                  _configureLogoWidget(),
                  spacing(30.1),
                  _configureMainTitle(),
                  spacing(13.1),
                  _configureSubTitle()
                ],
              ),
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
    );
  }

  Widget _configureAppBar(BuildContext context) {
    return IconButton(
      alignment: AlignmentDirectional.centerStart,
      iconSize: 25,
      icon: Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
      ),
      onPressed: () {
        Navigator.pop(context);
      },
    );
  }

  Widget _configureLogoWidget() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50), color: Colors.black),
    );
  }

  Widget _configureMainTitle() {
    return Text('Welcome', style: notoSansBoldFont(37, Colors.black));
  }

  Widget _configureSubTitle() {
    final String subTitle =
        'Whatever you write or read, it will be very readable and interesting!';
    return Text(subTitle,
        textAlign: TextAlign.center,
        style: notoSansRegularFont(16, Color.fromRGBO(102, 102, 102, 1)));
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
          
        },
        child: Stack(children: <Widget>[
          Positioned(
              top: 16,
              left: 30,
              bottom: 17,
              child: Text(
                'START',
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
