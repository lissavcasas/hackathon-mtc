import 'package:alertmtc/pages/create_alert_page.dart';
import 'package:alertmtc/pages/home_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    'home-page': (BuildContext context) => HomePage(),
    'create-alert-page': (BuildContext context) => CreateAlertPage(),
  };
}
