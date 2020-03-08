import 'dart:async';
import 'dart:io';
import 'package:alertmtc/providers/alert_report_provider.dart';
import 'package:alertmtc/unicorn_button.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CreateAlertPage extends StatefulWidget {
  @override
  _CreateAlertPageState createState() => _CreateAlertPageState();
  final double latitude;
  final double longitude;
  CreateAlertPage({this.latitude, this.longitude});
}

class _CreateAlertPageState extends State<CreateAlertPage> {
  final _scaffolKey = new GlobalKey<ScaffoldState>();
  final alertReportProvider = new AlertReportProvider();
  List<String> _accidents = [
    'Atropello común',
    'Atropello fuga',
    'Choque',
    'Choque fuga',
    'Caída de vehículo en movimiento',
    'Otros'
  ];
  List<String> _grades = [
    '1',
    '2',
    '3',
    '4',
    '5',
  ];
  int _selectedIndex = 0;
  int _index = 0;
  String type = '';
  int severity;
  File _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffolKey,
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
              SizedBox(height: 50),
              takePictureBtn(),
              SizedBox(height: 10),
              createAlertBtn(),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  Widget getAccidentTypes() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
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
      height: MediaQuery.of(context).size.height * 0.19,
      decoration: new BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey[50],
          )
        ],
        borderRadius: new BorderRadius.circular(10.0),
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
                  style: TextStyle(fontSize: 10),
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
      height: MediaQuery.of(context).size.height * 0.19,
      decoration: new BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey[50],
          )
        ],
        borderRadius: new BorderRadius.circular(10.0),
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
                     style: TextStyle(fontSize: 10),
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
      height: MediaQuery.of(context).size.height * 0.19,
      decoration: new BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey[50],
          )
        ],
        borderRadius: new BorderRadius.circular(10.0),
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
                   style: TextStyle(fontSize: 10),
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
      height: MediaQuery.of(context).size.height * 0.19,
      decoration: new BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey[50],
          )
        ],
        borderRadius: new BorderRadius.circular(10.0),
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
                   style: TextStyle(fontSize: 10),
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
      height: MediaQuery.of(context).size.height * 0.19,
      decoration: new BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey[50],
          )
        ],
        borderRadius: new BorderRadius.circular(10.0),
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
          padding: EdgeInsets.all(5.0),
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
                padding: EdgeInsets.only(top: 20),
                child: Text(
                  _accidents.elementAt(4),
                  textAlign: TextAlign.center,
                   style: TextStyle(fontSize: 10),
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
      height: MediaQuery.of(context).size.height * 0.19,
      decoration: new BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey[50],
          )
        ],
        borderRadius: new BorderRadius.circular(10.0),
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
                   style: TextStyle(fontSize: 10),
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
          _grades.elementAt(_index),
          style: TextStyle(fontSize: 16),
        ),
        onPressed: () {
          setState(() {
            severity = int.parse(_grades.elementAt(_index));
          });
          print('el grado seleccionado es: $severity');
        },
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
        child: Text(_grades.elementAt(1), style: TextStyle(fontSize: 16)),
        onPressed: () {
          setState(() {
            severity = int.parse(_grades.elementAt(1));
          });
          print('el grado seleccionado es: $severity');
        },
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
        child: Text(_grades.elementAt(2), style: TextStyle(fontSize: 16)),
        onPressed: () {
          setState(() {
            severity = int.parse(_grades.elementAt(2));
          });
          print('el grado seleccionado es: $severity');
        },
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
        child: Text(_grades.elementAt(3), style: TextStyle(fontSize: 16)),
        onPressed: () {
          setState(() {
            severity = int.parse(_grades.elementAt(3));
          });
          print('el grado seleccionado es: $severity');
        },
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
        child: Text(_grades.elementAt(4), style: TextStyle(fontSize: 16)),
        onPressed: () {
          setState(() {
            severity = int.parse(_grades.elementAt(4));
          });
          print('el grado seleccionado es: $severity');
        },
      ),
    );
  }

  takePictureBtn() {
    if (_image == null) {
      return InkWell(
        borderRadius: BorderRadius.circular(35),
        onTap: openCamera,
        child: CircleAvatar(
          radius: 35,
          child: CircleAvatar(
            radius: 34,
            backgroundColor: Colors.white,
            foregroundColor: Color(0xFFD40C16),
            child: Icon(
              Icons.photo_camera,
            ),
          ),
        ),
      );
    } else {
      return InkWell(
        borderRadius: BorderRadius.circular(45),
        onTap: openCamera,
        child: Container(
          width: 100.0,
          height: 100.0,
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            image: new DecorationImage(
              fit: BoxFit.fill,
              image: FileImage(_image),
            ),
          ),
        ),
      );
    }
  }

  void openCamera() async {
    try {
      var image = await ImagePicker.pickImage(source: ImageSource.camera);
      setState(() {
        _image = image;
      });
    } catch (err) {
      print("****");
      print(err);
      final snackBar = SnackBar(content: Text('Error al cargar la cámara'));
      _scaffolKey.currentState.showSnackBar(snackBar);
    }
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
            _updateUserLogged();
          },
        ),
      ),
    );
  }

  _updateUserLogged() async {
    final response = await alertReportProvider.storeTicket(
        type: type,
        severity: severity,
        files: _image,
        latitude: widget.latitude.toString(),
        longitude: widget.longitude.toString());
    if (response['code'] == 200) {
      final snackBar = SnackBar(content: Text(response['message']));
      _scaffolKey.currentState.showSnackBar(snackBar);
      setState(() {
        type = null;
        severity = null;
        _image = null;
      });
      Timer(Duration(seconds: 2), () => Navigator.of(context).pop());
    } else {
      final snackBar = SnackBar(content: Text(response['message']));
      _scaffolKey.currentState.showSnackBar(snackBar);
    }
  }
}
