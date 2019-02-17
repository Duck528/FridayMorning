
import 'package:flutter/material.dart';
import 'package:friday_morning/SignIn/signin_page_provider.dart';

class SignInPage extends StatefulWidget { 
  @override
  State<StatefulWidget> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> { 
  @override
  Widget build(BuildContext context) {
    return SignInPageProvider();
  }
}