// ignore_for_file: unused_field

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:http/http.dart' as http;

class Maps extends StatefulWidget {
  const Maps({super.key});

  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  static const LatLng _delhi = LatLng(28.6428755, 77.2197571);
  static const LatLng _haryana = LatLng(28.6429181, 77.2193808);
  GoogleMapController? _mapController;
  Set<Polyline> _polylines = {};

  @override
  void initState() {
    super.initState();
    _getDirections();
  }

  Future<void> _getDirections() async {
    final apiKey = 'AIzaSyAbWl0UP3pf-Z1sT9UmCWjYPe_tBB6UFlY';
    final url = Uri.parse(
      'https://maps.googleapis.com/maps/api/directions/json?origin=${_delhi.latitude},${_delhi.longitude}&destination=${_haryana.latitude},${_haryana.longitude}&key=$apiKey',
    );

    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);
      final points = _decodePolyline(data['routes'][0]['overview_polyline']['points']);
      setState(() {
        _polylines.add(
          Polyline(
            polylineId: PolylineId('route'),
            points: points,
            color: Colors.blue,
            width: 5,
          ),
        );
      });
    } else {
      throw Exception('Failed to load directions');
    }
  }

  List<LatLng> _decodePolyline(String encoded) {
    List<LatLng> polylinePoints = [];
    int index = 0;
    int len = encoded.length;
    int latitude = 0;
    int longitude = 0;

    while (index < len) {
      int b;
      int shift = 0;
      int result = 0;

      do {
        b = encoded.codeUnitAt(index) - 63;
        index++;
        result |= (b & 0x1f) << shift;
        shift += 5;
      } while (b >= 0x20);

      int dlat = ((result & 1) != 0 ? ~(result >> 1) : (result >> 1));
      latitude += dlat;
      shift = 0;
      result = 0;

      do {
        b = encoded.codeUnitAt(index) - 63;
        index++;
        result |= (b & 0x1f) << shift;
        shift += 5;
      } while (b >= 0x20);

      int dlon = ((result & 1) != 0 ? ~(result >> 1) : (result >> 1));
      longitude += dlon;

      LatLng point = LatLng(
        (latitude / 1E5).toDouble(),
        (longitude / 1E5).toDouble(),
      );
      polylinePoints.add(point);
    }

    return polylinePoints;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(
        initialCameraPosition: CameraPosition(
          target: _delhi,
          zoom: 7,
        ),
        onMapCreated: (controller) {
          _mapController = controller;
        },
        polylines: _polylines,
      ),
    );
  }
}
