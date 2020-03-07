import 'package:alertmtc/unicorn_button.dart';
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

  Widget alertCard() {
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
              getEmergencyTypes(),
              SizedBox(height: 15),
              getGrades(),
              SizedBox(height: 15),
              //takePictureBtn(),
              createAlertBtn(),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }

  Widget getEmergencyTypes() {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
          alignment: Alignment.centerLeft,
          child: Text(
            'Tipo de Emergencia',
            style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ),
        Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                emergencyOne(),
                emergencyOne(),
                emergencyOne(),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                emergencyOne(),
                emergencyOne(),
                emergencyOne(),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget emergencyOne() {
    return Container(
      decoration: new BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 5.0, // has the effect of softening the shadow
            spreadRadius: 2, // has the effect of extending the shadow
          )
        ],
        borderRadius: new BorderRadius.circular(10.0),
        //gradient: new LinearGradient(),
      ),
      child: Card(
        //elevation: 0.0,
        child: FlatButton(
          onPressed: () => {},
          color: Colors.transparent,
          padding: EdgeInsets.all(10.0),
          child: Column(
            // Replace with a Row for horizontal icon + text
            children: <Widget>[
              Container(
                width: 56,
                height: 56,
                child: Image.asset(
                  "assets/images/fire.png",
                ),
              ),
              Text("Incendio")
            ],
          ),
        ),
      ),
    );
  }

  Widget getGrades() {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 20, top: 10, bottom: 10),
          alignment: Alignment.centerLeft,
          child: Text(
            'Grado / Intensidad',
            style: TextStyle(
                fontFamily: 'OpenSans',
                fontSize: 16,
                fontWeight: FontWeight.bold),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            gradeOne(),
            gradeTwo(),
            gradeThree(),
            gradeFour(),
            gradeFive(),
          ],
        ),
      ],
    );
  }

  Widget gradeOne() {
    return Container(
      padding: EdgeInsets.all(5),
      child: UnicornOutlineButton(
        strokeWidth: 4,
        radius: 24,
        gradient: LinearGradient(colors: [
          Colors.green[800],
          Colors.greenAccent,
        ]),
        child: Text('1', style: TextStyle(fontSize: 16)),
        onPressed: () {},
      ),
    );
  }

  Widget gradeTwo() {
    return Container(
      padding: EdgeInsets.all(5),
      child: UnicornOutlineButton(
        strokeWidth: 4,
        radius: 24,
        gradient: LinearGradient(colors: [
          Colors.green[800],
          Colors.yellow[800],
        ]),
        child: Text('2', style: TextStyle(fontSize: 16)),
        onPressed: () {},
      ),
    );
  }

  Widget gradeThree() {
    return Container(
      padding: EdgeInsets.all(5),
      child: UnicornOutlineButton(
        strokeWidth: 4,
        radius: 24,
        gradient: LinearGradient(colors: [
          Colors.yellow[800],
          Colors.orangeAccent,
        ]),
        child: Text('3', style: TextStyle(fontSize: 16)),
        onPressed: () {},
      ),
    );
  }

  Widget gradeFour() {
    return Container(
      padding: EdgeInsets.all(5),
      child: UnicornOutlineButton(
        strokeWidth: 4,
        radius: 24,
        gradient: LinearGradient(colors: [
          Colors.orangeAccent,
          Colors.orange[900],
        ]),
        child: Text('4', style: TextStyle(fontSize: 16)),
        onPressed: () {},
      ),
    );
  }

  Widget gradeFive() {
    return Container(
      padding: EdgeInsets.all(5),
      child: UnicornOutlineButton(
        strokeWidth: 4,
        radius: 24,
        gradient: LinearGradient(colors: [
          Colors.orange[900],
          Colors.redAccent,
        ]),
        child: Text('5', style: TextStyle(fontSize: 16)),
        onPressed: () {},
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
          color: Color(0xFFD40C16),
          textColor: Colors.white,
          onPressed: () {
            print('holi');
          },
        ),
      ),
    );
  }
}
