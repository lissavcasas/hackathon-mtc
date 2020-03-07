import 'package:alertmtc/sos_page.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    'home-page': (BuildContext context) => SosPage(),
  };
}
