//import 'package:alertmtc/main.dart';
import 'package:alertmtc/pages/emergencies_page.dart';
import 'package:alertmtc/pages/historial_page.dart';
//import 'package:alertmtc/pages/maps.dart';
import 'package:alertmtc/pages/sos_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  static List<Widget> _widgetOptions = <Widget>[
    SOSPage(),
    // Maps(),
    HistorialPage(),
    EmergenciesPage(),
  ];
  List<String> _title = ['SOS', 'Historial', 'Emergencias'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          title: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(_title.elementAt(_selectedIndex)),
          ),
          backgroundColor: Color(0xFFD40C16),
        ),
        drawer: _hamburguerMenu(),
        bottomNavigationBar: _bottomNavigationBar(),
        //la idea es que el body sea el mapa de google maps con el boton de alerta
        //cuando se haga tap en el boton de alerta, debe redirigir a la vista de createalert
        body: Center(
          child: _widgetOptions.elementAt(_selectedIndex),
        ));
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
      currentIndex: _selectedIndex,
      onTap: _onSelectItem,
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

  _onSelectItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
