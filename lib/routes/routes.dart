import 'package:alertmtc/pages/create_alert_page.dart';
import 'package:alertmtc/pages/home_page.dart';
import 'package:alertmtc/pages/phone_auth.dart';
import 'package:alertmtc/pages/splash_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    'splash-page': (BuildContext context) => SplashPage(),
    'phone-auth': (BuildContext context) => PhoneAuth(),
    'home-page': (BuildContext context) => HomePage(),
    'create-alert-page': (BuildContext context) => CreateAlertPage(),
  };
}
