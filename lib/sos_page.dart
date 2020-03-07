import 'package:alertmtc/create_alert_page.dart';
import 'package:flutter/material.dart';

class SosPage extends StatefulWidget {
  SosPage({Key key}) : super(key: key);

  @override
  _SosPageState createState() => _SosPageState();
}

class _SosPageState extends State<SosPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Padding(
          padding: const EdgeInsets.only(left: 20.0),
          child: Text(
            'SOS',
          ),
        ),
      ),
      drawer: _hamburguerMenu(),
      bottomNavigationBar: _bottomNavigationBar(),
      //la idea es que el body sea el mapa de google maps con el boton de alerta
      //cuando se haga tap en el boton de alerta, debe redirigir a la vista de createalert
      body: Center(
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
      ),
    );
  }

  _hamburguerMenu() {
    final size = MediaQuery.of(context).size;
    return Drawer(
        child: ListView(
      children: <Widget>[
        Container(
          height: 0.1 * size.height,
          child: DrawerHeader(
            child: SizedBox(),
          ),
        ),
        ListTile(
          leading: Icon(Icons.add_alert),
          title: Text('Sos'),
        ),
        ListTile(
          leading: Icon(Icons.list),
          title: Text('Historial'),
        ),
        ListTile(
          leading: Icon(Icons.help),
          title: Text('Emergencias'),
        ),
        ListTile(
          leading: Icon(Icons.person),
          title: Text('Mis datos'),
        ),
        ListTile(
          leading: Icon(Icons.keyboard_return),
          title: Text('Cerrar sesión'),
        ),
      ],
    ));
  }

  _bottomNavigationBar() {
    return BottomNavigationBar(
      selectedIconTheme: IconThemeData(color: Color(0xFFD40C16)),
      selectedLabelStyle: TextStyle(color: Color(0xFFD40C16)),
      selectedFontSize: 14,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.add_alert),
          title: Text('Sos'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.list),
          title: Text('Historial'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.help),
          title: Text('Emergencias'),
        ),
      ],
      //currentIndex: _selectedIndex,
      //onTap: _onItemTapped,
    );
  }
}
