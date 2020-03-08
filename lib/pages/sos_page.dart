import 'dart:async';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'create_alert_page.dart';

class SOSPage extends StatefulWidget {
  @override
  _SOSPageState createState() => _SOSPageState();
}

class _SOSPageState extends State<SOSPage> {
  Location location = new Location();
  CameraPosition _latLongMap = CameraPosition(
    target: LatLng(-12.0463717, -77.0427533),
    zoom: 14.4746,
  );

  Completer<GoogleMapController> _mapController = Completer();
  GoogleMapController mapController;
  CameraPosition _lastPosition = CameraPosition(
    target: LatLng(-12.0463717, -77.0427533),
    zoom: 14.4746,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: <Widget>[
            GoogleMap(
              mapType: MapType.normal,
              initialCameraPosition: _latLongMap,
              onCameraMove: (CameraPosition position) {
                _lastPosition = position;
              },
              onMapCreated: (GoogleMapController controller) {
                _mapController.complete(controller);
              },
            ),
            Center(
              child: Icon(
                Icons.location_on,
                color: Color(0xFFD40C16),
                size: 40,
              ),
            )
          ],
        ),
        floatingActionButton: Row(
          children: <Widget>[
            SizedBox(width: 20),
            Container(
              height: 40,
              child: FloatingActionButton(
                heroTag: 'btn1',
                backgroundColor: Colors.blueGrey,
                child: Icon(Icons.location_searching),
                onPressed: _myLocation,
              ),
            ),
            Expanded(child: SizedBox()),
            FloatingActionButton(
              heroTag: 'btn2',
              backgroundColor: Color(0xFFD40C16),
              child: Text('SOS'),
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (BuildContext context) {
                  return CreateAlertPage(
                    latitude: _lastPosition.target.latitude,
                    longitude: _lastPosition.target.longitude,
                  );
                }));
              },
            )
          ],
        ));
  }

  void _myLocation() async {
    final pos = await location.getLocation();
    final myLocation = CameraPosition(
      target: LatLng(pos.latitude, pos.longitude),
      zoom: 14.4746,
    );
    final GoogleMapController controller = await _mapController.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(myLocation));
  }
}
