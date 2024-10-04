// // ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api, deprecated_member_use

// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_typeahead/flutter_typeahead.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';

// class SearchLocation extends StatefulWidget {
//   @override
//   _SearchLocationState createState() => _SearchLocationState();
// }

// class _SearchLocationState extends State<SearchLocation> {
//   LatLng? myCurrentLocation;
//   LatLng? searchLocation;
//   final TextEditingController _searchController = TextEditingController();
//   GoogleMapController? mapController;

//   @override
//   void initState() {
//     super.initState();
//     _fetchCurrentLocation();
//   }

//   Future<void> _fetchCurrentLocation() async {
//     Position position = await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.high);
//     setState(() {
//       myCurrentLocation = LatLng(position.latitude, position.longitude);
//       if (mapController != null) {
//         mapController!.animateCamera(
//           CameraUpdate.newLatLng(myCurrentLocation!),
//         );
//       }
//     });
//   }

//   Future<List> _getSuggestions(String input) async {
//     String apiKey = "AIzaSyDoXTxQ_Lgt8VpUzvpBvJSnYujLzm2ft6Q";
//     String baseUrl =
//         'https://maps.googleapis.com/maps/api/place/autocomplete/json';
//     String request = '$baseUrl?input=$input&key=$apiKey';
//     var response = await http.get(Uri.parse(request));
//     var data = json.decode(response.body);
//     return data['predictions'];
//   }

//   Future<void> _getPlaceDetails(String placeId) async {
//     String apiKey = "AIzaSyDoXTxQ_Lgt8VpUzvpBvJSnYujLzm2ft6Q";
//     String baseUrl = 'https://maps.googleapis.com/maps/api/place/details/json';
//     String request = '$baseUrl?place_id=$placeId&key=$apiKey';
//     var response = await http.get(Uri.parse(request));
//     var data = json.decode(response.body);
//     var location = data['result']['geometry']['location'];
//     setState(() {
//       searchLocation = LatLng(location['lat'], location['lng']);
//       mapController?.animateCamera(CameraUpdate.newLatLng(searchLocation!));
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Search Location'),
//       ),
//       body: Column(
//         children: [
//           Padding(
//             padding: EdgeInsets.all(16.w),
//             child: TypeAheadField(
//               textFieldConfiguration: TextFieldConfiguration(
//                 controller: _searchController,
//                 decoration: InputDecoration(
//                   hintText: 'Search Location',
//                   border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(14.sp),
//                   ),
//                 ),
//               ),
//               suggestionsCallback: _getSuggestions,
//               itemBuilder: (context, suggestion) {
//                 return ListTile(
//                   title: Text(suggestion['description']),
//                 );
//               },
//               onSuggestionSelected: (suggestion) {
//                 _getPlaceDetails(suggestion['place_id']);
//               },
//             ),
//           ),
//           Expanded(
//             child: myCurrentLocation == null
//                 ? Center(child: CircularProgressIndicator())
//                 : GoogleMap(
//                     initialCameraPosition: CameraPosition(
//                       target: myCurrentLocation!,
//                       zoom: 14,
//                     ),
//                     myLocationEnabled: true,
//                     markers: _getMarkers(),
//                     onMapCreated: (GoogleMapController controller) {
//                       mapController = controller;
//                     },
//                   ),
//           ),
//         ],
//       ),
//     );
//   }

//   Set<Marker> _getMarkers() {
//     Set<Marker> markers = {};

//     // Marker for current location
//     if (myCurrentLocation != null) {
//       markers.add(
//         Marker(
//           markerId: MarkerId('currentLocation'),
//           position: myCurrentLocation!,
//           icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
//           infoWindow: InfoWindow(title: "Current Location"),
//         ),
//       );
//     }

//     // Marker for searched location
//     if (searchLocation != null) {
//       markers.add(
//         Marker(
//           markerId: MarkerId('searchLocation'),
//           position: searchLocation!,
//           icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueBlue),
//           infoWindow: InfoWindow(title: "Searched Location"),
//         ),
//       );
//     }

//     return markers;
//   }
// }
