import 'package:flutter/material.dart';
import 'package:friday_morning/Join/join_page_provider.dart';

class JoinPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _JoinPageState();
}

class _JoinPageState extends State<JoinPage> {
  @override
  Widget build(BuildContext context) {
    return JoinPageProvider(
      child: Scaffold(
        backgroundColor: Colors.brown,
      ),
    );
  }
}
