import 'package:flutter/material.dart';

class CreateAlertPage extends StatefulWidget {
  CreateAlertPage({Key key}) : super(key: key);

  @override
  _CreateAlertPageState createState() => _CreateAlertPageState();
}

class _CreateAlertPageState extends State<CreateAlertPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            'Crear Alerta',
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            alertCard(),
          ],
        ),
      ),
    );
  }

  alertCard() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: new BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10.0, // has the effect of softening the shadow
              //spreadRadius: 2, // has the effect of extending the shadow
            )
          ],
        ),
        child: Card(
          elevation: 0.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            //side: BorderSide(width: 0.5, color: Colors.black12),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              SizedBox(height: 25),
              getEmergencyType(),
              SizedBox(height: 25),
              getGrade(),
              SizedBox(height: 25),
              SizedBox(height: 25),
              //takePictureBtn(),
              createAlertBtn(),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }

  Widget getEmergencyType() {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10.0),
          labelText: 'Tipo de emergencia',
          labelStyle: TextStyle(fontFamily: 'OpenSans', fontSize: 16),
        ),
      ),
    );
  }

  Widget getGrade() {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: TextField(
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(10.0),
          labelText: 'Grado',
          labelStyle: TextStyle(fontFamily: 'OpenSans', fontSize: 16),
        ),
      ),
    );
  }

  takePictureBtn() {}

  Widget createAlertBtn() {
      return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: 12.0,
            ),
            child: Text('Enviar alerta'),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          elevation: 1,
          //color: Color(0xFFD40C16),
          //textColor: Colors.white,
          //onPressed: ,
        ),
      ),
    );
  }
}
