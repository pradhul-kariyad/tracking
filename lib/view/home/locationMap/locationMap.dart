// ignore_for_file: file_names, avoid_print, deprecated_member_use, unused_import, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class LocationMap extends StatefulWidget {
  const LocationMap({super.key});

  @override
  State<LocationMap> createState() => _LocationMapState();
}

class _LocationMapState extends State<LocationMap> {
  LatLng? myCurrentLocation;
  LatLng? searchLocation;
  GoogleMapController? mapController;
  Set<Marker> _markers = {};
  Set<Polyline> _polylines = {};
  String apiKey = 'AIzaSyDoXTxQ_Lgt8VpUzvpBvJSnYujLzm2ft6Q';

  @override
  void initState() {
    super.initState();
    _checkPermissionsAndFetchLocation();
  }

  Future<void> _checkPermissionsAndFetchLocation() async {
    var status = await Permission.location.request();
    if (status.isGranted) {
      _fetchCurrentLocation();
    } else {
      print('Location permission denied');
    }
  }

  Future<void> _fetchCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    setState(() {
      myCurrentLocation = LatLng(position.latitude, position.longitude);
      _markers.add(
        Marker(
          markerId: const MarkerId('currentLocation'),
          position: myCurrentLocation!,
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
          infoWindow: const InfoWindow(title: 'Your Location'),
        ),
      );

      if (mapController != null) {
        mapController!.animateCamera(
          CameraUpdate.newLatLngZoom(myCurrentLocation!, 14),
        );
      }
    });
  }

  Future<void> _getPlaceDetails(String placeId) async {
    final url =
        'https://maps.googleapis.com/maps/api/place/details/json?place_id=$placeId&key=$apiKey';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      final location = result['result']['geometry']['location'];

      print('Place Details: $result');

      setState(() {
        searchLocation = LatLng(location['lat'], location['lng']);
        _markers.add(
          Marker(
            markerId: const MarkerId('searchLocation'),
            position: searchLocation!,
            icon:
                BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
            infoWindow: const InfoWindow(title: 'Searched Location'),
          ),
        );

        _getRoute(myCurrentLocation!, searchLocation!);

        if (mapController != null && searchLocation != null) {
          mapController!.animateCamera(
            CameraUpdate.newLatLngZoom(searchLocation!, 14),
          );
        }
      });
    } else {
      print('Failed to load place details: ${response.body}');
    }
  }

  Future<List<dynamic>> _searchPlace(String input) async {
    final url =
        'https://maps.googleapis.com/maps/api/place/autocomplete/json?input=$input&key=$apiKey';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      print('Search Suggestions: ${result['predictions']}');
      return result['predictions'] ?? [];
    } else {
      return [];
    }
  }

  Future<void> _getRoute(LatLng start, LatLng end) async {
    final url =
        'https://maps.googleapis.com/maps/api/directions/json?origin=${start.latitude},${start.longitude}&destination=${end.latitude},${end.longitude}&key=$apiKey';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      if (result['routes'].isNotEmpty) {
        _createPolylines(result['routes'][0]['overview_polyline']['points']);
      }
    } else {
      print(
          'Failed to load route data: ${response.body}'); // Improved error logging
    }
  }

  void _createPolylines(String encodedString) {
    List<LatLng> polylinePoints = _convertToLatLng(_decodePoly(encodedString));
    setState(() {
      _polylines.add(Polyline(
        polylineId: const PolylineId('route'),
        color: Colors.red, // Set polyline color to red
        width: 5,
        points: polylinePoints,
      ));
    });
  }

  List<LatLng> _convertToLatLng(List<PointLatLng> points) {
    return points
        .map((point) => LatLng(point.latitude, point.longitude))
        .toList();
  }

  List<PointLatLng> _decodePoly(String poly) {
    List<PointLatLng> result = [];
    int index = 0, len = poly.length;
    int lat = 0, lng = 0;

    while (index < len) {
      int b, shift = 0, resultLat = 0, resultLng = 0; // Defined resultLng here
      do {
        b = poly.codeUnitAt(index++) - 63;
        resultLat |= (b & 0x1f) << shift;
        shift += 5;
      } while (b >= 0x20);
      int dlat = (resultLat & 1) == 1 ? ~(resultLat >> 1) : (resultLat >> 1);
      lat += dlat;

      shift = 0;
      resultLng = 0; // Initialize resultLng here
      do {
        b = poly.codeUnitAt(index++) - 63;
        resultLng |= (b & 0x1f) << shift;
        shift += 5;
      } while (b >= 0x20);
      int dlng = (resultLng & 1) == 1 ? ~(resultLng >> 1) : (resultLng >> 1);
      lng += dlng;

      result.add(PointLatLng((lat / 1E5).toDouble(), (lng / 1E5).toDouble()));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarOpacity: 0,
        bottomOpacity: 0,
        surfaceTintColor: const Color(0xff383434),
        foregroundColor: const Color(0xff383434),
        titleSpacing: 0,
        scrolledUnderElevation: 0,
        elevation: 0,
        toolbarHeight: 1.h,
        backgroundColor: const Color(0xff383434),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: const InputDecoration(
                labelText: 'Search Location',
                border: OutlineInputBorder(),
              ),
              onSubmitted: (value) async {
                List<dynamic> suggestions = await _searchPlace(value);
                if (suggestions.isNotEmpty) {
                  // Print the first suggestion for debugging
                  print('Selected Place ID: ${suggestions[0]['place_id']}');
                  _getPlaceDetails(suggestions[0]['place_id']);
                } else {
                  print('No suggestions found.');
                }
              },
            ),
          ),
          Expanded(
            child: myCurrentLocation == null
                ? const Center(
                    child: CircularProgressIndicator(
                    color: Color(0xff383434),
                  ))
                : GoogleMap(
                    initialCameraPosition: CameraPosition(
                      target: myCurrentLocation!,
                      zoom: 14,
                    ),
                    myLocationEnabled: true,
                    markers: _markers,
                    polylines: _polylines,
                    onMapCreated: (GoogleMapController controller) {
                      mapController = controller;
                    },
                  ),
          ),
        ],
      ),
    );
  }
}

class PointLatLng {
  final double latitude;
  final double longitude;

  PointLatLng(this.latitude, this.longitude);
}
