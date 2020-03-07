import 'package:flutter/material.dart';
import 'create_alert_page.dart';

class SOSPage extends StatefulWidget {
  @override
  _SOSPageState createState() => _SOSPageState();
}

class _SOSPageState extends State<SOSPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipOval(
        child: Material(
          color: const Color(0xFFD40C16), // button color
          child: InkWell(
            splashColor: Colors.redAccent, // inkwell color
            child: SizedBox(
              width: 56,
              height: 56,
              child: Center(
                child: Text(
                  'SOS',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return CreateAlertPage();
              }));
            },
          ),
        ),
      ),
    );
  }
}
