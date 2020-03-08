import 'package:flutter/material.dart';
import 'package:alertmtc/pages/home_page.dart';

class PhoneAuth extends StatefulWidget {
  PhoneAuth({Key key}) : super(key: key);

  @override
  _PhoneAuthState createState() => _PhoneAuthState();
}

class _PhoneAuthState extends State<PhoneAuth> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Form(
            child: Column(
              children: <Widget>[
                SafeArea(
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.22,
                  ),
                ),
                Center(
                  child: Container(
                      height: 100,
                      width: 200,
                      child: Image.asset("assets/images/logo.png")),
                ),
                SizedBox(height: 100),
                getPhoneNumber(),
                SizedBox(height: 60),
                authWithPhone(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget getPhoneNumber() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0),
      child: TextField(
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          labelText: 'Número celular',
          prefixIcon: Icon(
            Icons.phone,
          ),
          contentPadding:
              const EdgeInsets.only(left: 14.0, bottom: 10.0, top: 10.0),
        ),
      ),
    );
  }

  Widget authWithPhone() {
    return Center(
      child: ButtonTheme(
        minWidth: MediaQuery.of(context).size.width * 0.82,
        child: RaisedButton(
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: 12.0,
              ),
              child: Text('Siguiente'),
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            elevation: 0.0,
            color: Color(0xFFD40C16),
            textColor: Colors.white,
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext context) {
                return HomePage();
              }));
            }),
      ),
    );
  }
}
