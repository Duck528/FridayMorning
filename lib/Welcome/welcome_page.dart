import 'package:flutter/material.dart';
import 'package:friday_morning/Util/fonts.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[],
        ),
      ),
    );
  }
}

class _WelcomeWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return null;
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
        style: notoSansRegularFont(16, Color.fromRGBO(102, 102, 102, 1)));
  }
}
