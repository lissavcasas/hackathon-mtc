import 'package:alertmtc/models/accident_report_model.dart';
import 'package:alertmtc/providers/alert_report_provider.dart';
import 'package:alertmtc/utils/dateformat.dart';
import 'package:alertmtc/widgets/ticket_state.dart';
import 'package:flutter/material.dart';

class HistorialPage extends StatefulWidget {
  @override
  _HistorialPageState createState() => _HistorialPageState();
}

class _HistorialPageState extends State<HistorialPage> {
  Future<List<AccidentReportModel>> _accidentReportList;
  final alertReportProvider = new AlertReportProvider();
  @override
  void initState() {
    super.initState();
    _accidentReportList = alertReportProvider.getAllAccidentReports();
  }

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

  Widget _alertList() => FutureBuilder(
        future: _accidentReportList,
        builder: (BuildContext context,
            AsyncSnapshot<List<AccidentReportModel>> snapshot) {
          if (snapshot.hasData) {
            return _buildAlertReportList(snapshot.data);
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      );

  Widget _buildAlertReportList(List<AccidentReportModel> accidentReports) =>
      ListView.builder(
          itemCount: accidentReports.length,
          itemBuilder: (context, i) => _tile(
              title: accidentReports[i].type,
              stateName: accidentReports[i].accidentReportStateData.name,
              stateId: accidentReports[i].accidentReportStateData.id,
              icon: getIconByType(accidentReports[i].type),
              createdAt: accidentReports[i].createdAt));

  IconData getIconByType(String type) {
    switch (type) {
      case 'Choque':
        return Icons.motorcycle;
        break;
      case 'Atropello común':
        return Icons.accessibility;
        break;
      case 'Atropello fuga':
        return Icons.accessible_forward;
        break;
      case 'Caída de vehículo en movimiento':
        return Icons.surround_sound;
        break;
      case 'Choque fuga':
        return Icons.assignment_late;
        break;
      case 'Otros':
        return Icons.apps;
        break;
      default:
        return Icons.airport_shuttle;
    }
  }

  ListTile _tile(
          {String title,
          String stateName,
          int stateId,
          IconData icon,
          DateTime createdAt}) =>
      ListTile(
        title: Text(title,
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
            )),
        subtitle: Text("")
        /* TicketState(ticketId: stateId, ticketName: stateName) */,
        leading: Icon(
          icon,
          color: Color(0xFFD40C16),
        ),
        trailing: Container(
          width: 40,
          child: Text(
            DateFormat.humanLanguageFormat(createdAt),
            style: TextStyle(fontSize: 9, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
          ),
        ),
      );
}
