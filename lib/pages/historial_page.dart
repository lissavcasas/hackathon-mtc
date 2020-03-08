import 'package:flutter/material.dart';

class HistorialPage extends StatefulWidget {
  HistorialPage({Key key}) : super(key: key);

  @override
  _HistorialPageState createState() => _HistorialPageState();
}

class _HistorialPageState extends State<HistorialPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          _searcher(context),
          Expanded(
            child: _alertList(),
          )
        ],
      ),
    );
  }

  Widget _searcher(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: size.width * 10,
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
        child: TextField(
          textCapitalization: TextCapitalization.sentences,
          decoration: InputDecoration(
            filled: true,
            fillColor: Colors.white,
            hintText: 'Buscar',
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: const BorderSide(
                color: Colors.transparent,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            suffixIcon: Icon(
              Icons.search,
              color: Colors.black45,
            ),
          ),
        ),
      ),
    );
  }

  Widget _alertList() => ListView(
        children: [
          _tile('Despiste y Volcadura', 'Texto de prueba', Icons.motorcycle),
          _tile('Atropello común', 'Texto de prueba', Icons.accessibility),
          _tile('Atropello común', 'Texto de prueba', Icons.accessibility),
          _tile('Atropello fuga', 'Texto de prueba', Icons.accessible_forward),
          _tile('Atropello fuga', 'Texto de prueba', Icons.accessible_forward),
          _tile('Atropello fuga', 'Texto de prueba', Icons.accessible_forward),
          _tile('Despiste y Volcadura', 'Texto de prueba', Icons.motorcycle),
          _tile('Otros', 'Texto de prueba', Icons.motorcycle),
          _tile('Despiste y Volcadura', 'Texto de prueba', Icons.motorcycle),
          _tile('Despiste y Volcadura', 'Texto de prueba', Icons.motorcycle),
        ],
      );

  ListTile _tile(String title, String subtitle, IconData icon) => ListTile(
        title: Text(title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            )),
        subtitle: Text(subtitle),
        leading: Icon(
          icon,
          color: Color(0xFFD40C16),
        ),
        trailing: Container(
          width: 40,
          child: Text(
            '07-03',
            style: TextStyle(fontSize: 9, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ),
      );
}
