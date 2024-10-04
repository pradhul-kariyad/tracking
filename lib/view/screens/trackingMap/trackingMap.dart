// ignore_for_file: file_names, avoid_print, deprecated_member_use, unused_import

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:tracking/main.dart';

class TrackingMap extends StatefulWidget {
  const TrackingMap({super.key});

  @override
  State<TrackingMap> createState() => _TrackingMapState();
}

class _TrackingMapState extends State<TrackingMap> {
  LatLng? myCurrentLocation;
  GoogleMapController? mapController;

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
      if (mapController != null) {
        mapController!.animateCamera(
          CameraUpdate.newLatLng(myCurrentLocation!),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarOpacity: 0,
        bottomOpacity: 0,
        // bottom: 0,
        surfaceTintColor: Color(0xff383434),
        foregroundColor: Color(0xff383434),
        titleSpacing: 0,
        scrolledUnderElevation: 0,
        elevation: 0,
        toolbarHeight: 1.h,
        backgroundColor: Color(0xff383434),
      ),
      body: myCurrentLocation == null
          ? Center(
              child: CircularProgressIndicator(
              color: Color(0xff383434),
            ))
          : GoogleMap(
              initialCameraPosition: CameraPosition(
                target: myCurrentLocation!,
                zoom: 14,
              ),
              myLocationEnabled: true,
              onMapCreated: (GoogleMapController controller) {
                mapController = controller;
              },
            ),
    );
  }
}
