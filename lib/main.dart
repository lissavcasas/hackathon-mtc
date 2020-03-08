import 'package:alertmtc/routes/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Alert MTC',
      theme: ThemeData(
        fontFamily: "OpenSans",
        primarySwatch: Colors.red,
        primaryColor: const Color(0xFFD40C16),
      ),
      initialRoute: 'splash-page',
      routes: getApplicationRoutes(),
    );
  }
}
