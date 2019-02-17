import 'package:flutter/material.dart';
import 'package:friday_morning/Home/home_bloc.dart';
import 'package:friday_morning/Home/home_page_provider.dart';
import 'package:friday_morning/presentation/heart_icons.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomePageProvider(
      homeBloc: HomeBloc(),
      child: Stack(
        children: <Widget>[
          _backgroundImage(),
          _loverInfoWidget(),
          _coupleDetailInfoWidget(),
          _floatingActionButton(context),
        ],
      ),
    );
  }

  Container _backgroundImage() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/default_bg.jpg'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget _loverInfoWidget() {
    Container _spacing(double space) {
      return Container(
        width: space,
      );
    }

    Text configureBoldText(String text) {
      return Text(text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ));
    }

    return SafeArea(
      child: Align(
        alignment: AlignmentDirectional.topStart,
        child: Container(
          height: 40,
          padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Heart.heart, size: 16),
              _spacing(7.0),
              configureBoldText('Suvely'),
            ],
          ),
        ),
      ),
    );
  }

  CupertinoActionSheetAction _configureAction(String text, VoidCallback callback) {
    var action = CupertinoActionSheetAction(
      onPressed: callback,
      child: Text(text),
    );
    return action;
  }

  void _showActionSheet(BuildContext context) {
    var actionSheet = CupertinoActionSheet(
      actions: <Widget>[
        _configureAction('배경화면 변경', () {}),
      ],
      cancelButton: _configureAction('취소', () {
        Navigator.pop(context);
      })
    );
    showCupertinoModalPopup(
      context: context,
      builder: (BuildContext context) => actionSheet,
    );
  }

  Widget _floatingActionButton(BuildContext context) {
    return Align(
      alignment: Alignment(0.9, 0.95),
      child: FloatingActionButton(
        backgroundColor: Colors.redAccent,
        child: Icon(Icons.add),
        onPressed: () {
          _showActionSheet(context);
        },
      ),
    );
  }

  Widget _coupleDetailInfoWidget() {
    Text configureMainText(String text) {
      return Text(text, style: TextStyle(color: Colors.white, fontSize: 28));
    }

    Text configureSubText(String text) {
      return Text(text, style: TextStyle(color: Colors.white, fontSize: 16));
    }

    Text configureMinorText(String text) {
      return Text(text, style: TextStyle(color: Colors.white, fontSize: 14));
    }

    return Align(
      alignment: AlignmentDirectional.bottomStart,
      child: Padding(
        padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
        child: Container(
          height: 220,
          width: 250,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              configureMainText('4117 days'),
              configureSubText('지금까지 우리 함께한 날 들'),
              Divider(color: Colors.white),
              configureMinorText('25번째 생일'),
              configureMinorText('??일 남았습니다')
            ],
          ),
        ),
      ),
    );
  }
}
