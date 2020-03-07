import 'package:alertmtc/unicorn_button.dart';
import 'package:flutter/material.dart';
//import 'package:image_picker/image_picker.dart';

class CreateAlertPage extends StatefulWidget {
  CreateAlertPage({Key key}) : super(key: key);

  @override
  _CreateAlertPageState createState() => _CreateAlertPageState();
}

class _CreateAlertPageState extends State<CreateAlertPage> {
  List<String> _accidents = [
    'Atropello común',
    'Atropello fuga',
    'Choque',
    'Choque fuga',
    'Caída de vehículo en movimiento',
    'Otros'
  ];
  int _selectedIndex = 0;
  String type = '';

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
              SizedBox(height: 5),
              getAccidentTypes(),
              SizedBox(height: 10),
              getGrades(),
              SizedBox(height: 55),
              takePictureBtn(),
              SizedBox(height: 30),
              createAlertBtn(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget getAccidentTypes() {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.only(left: 20, top: 10, bottom: 15),
          alignment: Alignment.centerLeft,
          child: Text(
            'Tipo de accidente',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                emergencyOne(),
                emergencyTwo(),
                emergencyThree(),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                emergencyFour(),
                emergencyFive(),
                emergencySix(),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget emergencyOne() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.30,
      height: MediaQuery.of(context).size.height * 0.16,
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
          onPressed: () {
            setState(() {
              type = _accidents.elementAt(_selectedIndex);
            });
            print('el tipo de accidente seleccionado es: $type');
          },
          color: Colors.transparent,
          padding: EdgeInsets.all(10.0),
          child: Column(
            // Replace with a Row for horizontal icon + text
            children: <Widget>[
              Container(
                width: 56,
                height: 56,
                child: Image.asset(
                  "assets/images/01.jpeg",
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  _accidents.elementAt(_selectedIndex),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget emergencyTwo() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.30,
      height: MediaQuery.of(context).size.height * 0.16,
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
          onPressed: () {
            setState(() {
              type = _accidents.elementAt(1);
            });
            print('el tipo de accidente seleccionado es: $type');
          },
          color: Colors.transparent,
          padding: EdgeInsets.all(10.0),
          child: Column(
            // Replace with a Row for horizontal icon + text
            children: <Widget>[
              Container(
                width: 56,
                height: 56,
                child: Image.asset(
                  "assets/images/02.jpeg",
                ),
              ),
              Container(
                  padding: EdgeInsets.only(top: 15),
                  child: Text(
                    _accidents.elementAt(1),
                    textAlign: TextAlign.center,
                  )),
            ],
          ),
        ),
      ),
    );
  }

  Widget emergencyThree() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.30,
      height: MediaQuery.of(context).size.height * 0.16,
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
          onPressed: () {
            setState(() {
              type = _accidents.elementAt(2);
            });
            print('el tipo de accidente seleccionado es: $type');
          },
          color: Colors.transparent,
          padding: EdgeInsets.all(10.0),
          child: Column(
            // Replace with a Row for horizontal icon + text
            children: <Widget>[
              Container(
                width: 56,
                height: 56,
                child: Image.asset(
                  "assets/images/03.jpeg",
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  _accidents.elementAt(2),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget emergencyFour() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.30,
      height: MediaQuery.of(context).size.height * 0.16,
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
          onPressed: () {
            setState(() {
              type = _accidents.elementAt(3);
            });
            print('el tipo de accidente seleccionado es: $type');
          },
          color: Colors.transparent,
          padding: EdgeInsets.all(10.0),
          child: Column(
            // Replace with a Row for horizontal icon + text
            children: <Widget>[
              Container(
                width: 56,
                height: 56,
                child: Image.asset(
                  "assets/images/06.jpeg",
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  _accidents.elementAt(3),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget emergencyFive() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.30,
      height: MediaQuery.of(context).size.height * 0.16,
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
          onPressed: () {
            setState(() {
              type = _accidents.elementAt(4);
            });
            print('el tipo de accidente seleccionado es: $type');
          },
          color: Colors.transparent,
          padding: EdgeInsets.all(10.0),
          child: Column(
            // Replace with a Row for horizontal icon + text
            children: <Widget>[
              Container(
                width: 56,
                height: 56,
                child: Image.asset(
                  "assets/images/05.jpeg",
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 1),
                child: Text(
                  _accidents.elementAt(4),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget emergencySix() {
    return Container(
      width: MediaQuery.of(context).size.width * 0.30,
      height: MediaQuery.of(context).size.height * 0.16,
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
          onPressed: () {
            setState(() {
              type = _accidents.elementAt(5);
            });
            print('el tipo de accidente seleccionado es: $type');
          },
          color: Colors.transparent,
          padding: EdgeInsets.all(10.0),
          child: Column(
            // Replace with a Row for horizontal icon + text
            children: <Widget>[
              Container(
                width: 56,
                height: 56,
                child: Image.asset(
                  "assets/images/07.jpeg",
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  _accidents.elementAt(5),
                  textAlign: TextAlign.center,
                ),
              )
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
          padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
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
        child: Text(
          '1',
          style: TextStyle(fontSize: 16),
        ),
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

  takePictureBtn() {
    return CircleAvatar(
      radius: 35,
      child: CircleAvatar(
        radius: 34,
        backgroundColor: Colors.white,
        foregroundColor: Color(0xFFD40C16),
        child: Icon(
          Icons.photo_camera,
        ),
      ),
    );
  }

  Widget createAlertBtn() {
    return SizedBox(
      width: double.infinity,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: RaisedButton(
          child: Container(
            padding: EdgeInsets.symmetric(
              vertical: 15.0,
            ),
            child: Text(
              'Enviar alerta',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
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
