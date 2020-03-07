import 'package:flutter/material.dart';

class EmergenciesPage extends StatefulWidget {
  EmergenciesPage({Key key}) : super(key: key);

  @override
  _EmergenciesPageState createState() => _EmergenciesPageState();
}

class _EmergenciesPageState extends State<EmergenciesPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child:Text('Números de emergencia'),
    );
  }
}