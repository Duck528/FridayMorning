import 'package:flutter/material.dart';
import 'package:friday_morning/Home/home_bloc.dart';
import 'package:friday_morning/Home/home_provider.dart';
import 'package:friday_morning/presentation/heart_icons.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HomeProvider(
      homeBloc: HomeBloc(),
      child: Stack(
        children: <Widget>[
          _backgroundImage(),
          _loverInfoWidget(),
          _coupleDetailInfoWidget(),
          _floatingActionButton(),
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

  Widget _floatingActionButton() {
    return Align(
      alignment: Alignment(0.9, 0.95),
      child: FloatingActionButton(
        backgroundColor: Colors.redAccent,
        child: Icon(Icons.add),
        onPressed: _floatingButtonTapped,
      ),
    );
  }

  void _floatingButtonTapped() {}

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
