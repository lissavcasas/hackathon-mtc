
import 'dart:async';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    loadApp();
  }
  
  loadApp() async {
    await new Future.delayed(const Duration(seconds: 3));
    Navigator.pushReplacementNamed(context, "phone-auth");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(40.0),
      color: Colors.white,
      child: Center(
        child: Image.asset("assets/images/logo.png"),
      ),
    );
  }
}

