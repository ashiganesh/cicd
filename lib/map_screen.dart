// // // import 'package:flutter/material.dart';
// // // import 'package:geolocator/geolocator.dart';
// // // import 'package:google_maps_flutter/google_maps_flutter.dart';

// // // class Mapscreen extends StatefulWidget {
// // //   const Mapscreen({super.key});

// // //   @override
// // //   State<Mapscreen> createState() => _MapscreenState();
// // // }

// // // class _MapscreenState extends State<Mapscreen> {
// // // GoogleMapController? mapcontroller;
// // // LatLng currentlatlng = LatLng(20.5937, 78.9629);

// // // final Set<Marker> markers = {};


// // // Future<void> getcurrentLocation()async{

// // //  bool locationEnabled;
// // //  LocationPermission permission;

// // //  locationEnabled = await Geolocator.isLocationServiceEnabled();

// // //  if(!locationEnabled){
// // //   return;
// // //  }

// // //  permission = await Geolocator.checkPermission();

// // //  if(permission== LocationPermission.denied){
// // //   permission = await Geolocator.requestPermission();
// // //  }

// // // Position position = await Geolocator.getCurrentPosition(
// // //  desiredAccuracy: LocationAccuracy.high
// // // );
// // // setState(() {
// // //   currentlatlng = LatLng(position.latitude, position.longitude);
// // // });
// // // addMarker(currentlatlng);
// // // cameraMovement(currentlatlng);

// // // }

// // // @override
// // //   void initState() {
// // //     // TODO: implement initState
// // //     super.initState();
// // //     getcurrentLocation();
// // //   }

// // // void addMarker(LatLng position){
// // // final marker  = Marker(markerId: MarkerId("Current Location"),
// // // position: position,
// // // infoWindow: InfoWindow(title: "You are here")
// // // );
// // // setState(() {
// // //   markers.add(marker);
// // // });
// // // }


// // // void cameraMovement(LatLng position){


// // // mapcontroller?.animateCamera(CameraUpdate.newCameraPosition(CameraPosition(target: position,zoom: 16)));
// // // }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Scaffold(
// // //       appBar: AppBar(title: Text("Map"),),
// // //       body: GoogleMap(initialCameraPosition: CameraPosition(target: currentlatlng,zoom: 5),
// // //       myLocationButtonEnabled: true,
// // //       markers: markers,
// // //       onMapCreated: (controller) {
// // //         mapcontroller = controller;
// // //       },),
// // //     );
// // //   }
// // // }



// // import 'dart:async';
// // import 'package:flutter/material.dart';
// // import 'package:google_maps_flutter/google_maps_flutter.dart';
// // import 'package:geolocator/geolocator.dart';

// // class MapControllerPractice extends StatefulWidget {
// //   const MapControllerPractice({super.key});

// //   @override
// //   State<MapControllerPractice> createState() =>
// //       _MapControllerPracticeState();
// // }

// // class _MapControllerPracticeState extends State<MapControllerPractice> {

// //   GoogleMapController? _mapController;

// //   LatLng _currentPosition =
// //       const LatLng(20.5937, 78.9629);

// //   StreamSubscription<Position>? _positionStream;

// //   double _zoom = 15;

// //   bool _followUser = false;

// //   @override
// //   void initState() {
// //     super.initState();
// //     getcurrentLocation();
// //   }

// //   // ==============================
// //   // GET INITIAL LOCATION
// //   // ==============================

// //   Future<void> getcurrentLocation() async {
// // bool locationEnabled;
// // LocationPermission permission;
// // locationEnabled = await Geolocator.isLocationServiceEnabled();

// // if(!locationEnabled){
// //   return;
// // }
// // permission = await Geolocator.checkPermission();
// // if(permission == LocationPermission.denied){
// //   permission = await Geolocator.requestPermission();
// // }
// //     Position position =
// //         await Geolocator.getCurrentPosition(
// //           desiredAccuracy: LocationAccuracy.high
// //         );

// //     _currentPosition =
// //         LatLng(position.latitude, position.longitude);

// //     setState(() {});

// //     _animateTo(_currentPosition);
// //   }

// //   // ==============================
// //   // CAMERA ANIMATION
// //   // ==============================

// //   void _animateTo(LatLng target) {

// //     _mapController?.animateCamera(
// //       CameraUpdate.

// //       //newLatLng(target)   // used for smooth transition
// //       newCameraPosition(
// //         CameraPosition(
// //           target: target,
// //           zoom: _zoom,
// //         ),
// //       ),
// //     );
// //   }

// //   // ==============================
// //   // ZOOM CONTROLS
// //   // ==============================

// //   void _zoomIn() {
// //     _zoom++;
// //     _animateTo(_currentPosition);
// //   }

// //   void _zoomOut() {
// //     _zoom--;
// //     _animateTo(_currentPosition);
// //   }

// //   // ==============================
// //   // FOLLOW USER MOVEMENT
// //   // ==============================

// //   void _toggleFollow() {

// //     _followUser = !_followUser;

// //     if (_followUser) {

// //       _positionStream =
// //           Geolocator.getPositionStream(
// //         locationSettings: const LocationSettings(
// //           accuracy: LocationAccuracy.high,
// //           distanceFilter: 5,
// //         ),
// //       ).listen((Position position) {

// //         _currentPosition =
// //             LatLng(position.latitude,
// //                 position.longitude);

// //         if (_followUser) {
// //           _animateTo(_currentPosition);
// //         }
// //       });

// //     } else {
// //       _positionStream?.cancel();
// //     }

// //     setState(() {});
// //   }

// //   @override
// //   void dispose() {
// //     _positionStream?.cancel();
// //     super.dispose();
// //   }

// //   // ==============================
// //   // UI
// //   // ==============================

// //   @override
// //   Widget build(BuildContext context) {

// //     return Scaffold(
// //       appBar: AppBar(title: const Text("Map Controller Practice")),

// //       body: Stack(
// //         children: [

// //           GoogleMap(
// //             initialCameraPosition: CameraPosition(
// //               target: _currentPosition,
// //               zoom: 5,
// //             ),
// //             myLocationEnabled: true,
// //             onMapCreated: (controller) {
// //               _mapController = controller;
// //             },
// //           ),

// //           // Zoom buttons

// //           // Positioned(
// //           //   right: 10,
// //           //   bottom: 120,
// //           //   child: Column(
// //           //     children: [

// //           //       FloatingActionButton(
// //           //         mini: true,
// //           //         onPressed: _zoomIn,
// //           //         child: const Icon(Icons.add),
// //           //       ),

// //           //      const SizedBox(height: 10),

// //           //       FloatingActionButton(
// //           //         mini: true,
// //           //         onPressed: _zoomOut,
// //           //         child: const Icon(Icons.remove),
// //           //       ),
// //           //     ],
// //           //   ),
// //           // ),

// //           // Follow user toggle
// //           Positioned(
// //             right: 10,
// //             bottom: 40,
// //             child: FloatingActionButton(
// //               backgroundColor:
// //                   _followUser ? Colors.green : Colors.grey,
// //               onPressed: _toggleFollow,
// //               child: const Icon(Icons.navigation),
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }














// import 'dart:convert';
// import 'package:flutter/material.dart';
// import 'package:flutter_polyline_points/flutter_polyline_points.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:http/http.dart' as http;

// class DirectionsMapScreen extends StatefulWidget {
//   const DirectionsMapScreen({super.key});

//   @override
//   State<DirectionsMapScreen> createState() => _DirectionsMapScreenState();
// }

// class _DirectionsMapScreenState extends State<DirectionsMapScreen> {

//   GoogleMapController? _mapController;

//   LatLng _origin =  const LatLng(20.5937, 78.9629);
//   //LatLng _destination = const LatLng(13.0827, 80.2707); // Example: Chennai
//   LatLng _destination = const LatLng(8.3076, 77.2218); // Example: Marthandam

//   final Set<Polyline> _polylines = {};

//   String distanceText = "";
//   String durationText = "";

//   final String apiKey = "AIzaSyBmas8gFqYHPwAceZUWZPiFIVwWZwEiutU";

//   @override
//   void initState() {
//     super.initState();
//     _getCurrentLocation();
//   }

//   // ==============================
//   // GET CURRENT LOCATION
//   // ==============================

//   Future<void> _getCurrentLocation() async {

//     LocationPermission permission = await Geolocator.requestPermission();

//     Position position = await Geolocator.getCurrentPosition();

//     setState(() {
//       _origin = LatLng(position.latitude, position.longitude);
//     });

//     _getDirections();
//   }

//   // ==============================
//   // CALL DIRECTIONS API
//   // ==============================

//   Future<void> _getDirections() async {

//     final url =
//         "https://maps.googleapis.com/maps/api/directions/json"
//         "?origin=${_origin.latitude},${_origin.longitude}"
//         "&destination=${_destination.latitude},${_destination.longitude}"
//         "&key=$apiKey";

//     final response = await http.get(Uri.parse(url));

//     final data = json.decode(response.body);
//     print("MAP URL  $url");
//     print("MAP DATA $data");
//     if (data["routes"].isEmpty) return;

//     final route = data["routes"][0];

//     final leg = route["legs"][0];

//     distanceText = leg["distance"]["text"];
//     durationText = leg["duration"]["text"];

//     final polyline = route["overview_polyline"]["points"];

//     _drawPolyline(polyline);

//     setState(() {});
//   }

//   // ==============================
//   // DRAW ROUTE
//   // ==============================
// void _drawPolyline(String encodedPolyline) {

//   // Decode polyline string into coordinates
//   List<PointLatLng> decodedPoints =
//       PolylinePoints.decodePolyline(encodedPolyline);

//   // Convert to Google Maps LatLng
//   List<LatLng> polylineCoordinates = decodedPoints
//       .map((point) =>
//           LatLng(point.latitude, point.longitude))
//       .toList();

//   // Create polyline
//   Polyline polyline = Polyline(
//     polylineId: const PolylineId("route"),
//     color: Colors.blue,
//     width: 5,
//     points: polylineCoordinates,
//   );

//   // Update UI
//   setState(() {
//     _polylines.clear();
//     _polylines.add(polyline);
//   });
// }


//   // ==============================
//   // UI
//   // ==============================

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Directions & ETA")),

//       body: Stack(
//         children: [

//           GoogleMap(
//             initialCameraPosition: CameraPosition(
//               target: _origin,
//               zoom: 5,
//             ),
//             polylines: _polylines,
//             markers: {
//               Marker(markerId: const MarkerId("origin"), position: _origin),
//               Marker(markerId: const MarkerId("dest"), position: _destination),
//             },
//             onMapCreated: (controller) {
//               _mapController = controller;
//             },
//           ),

//           Positioned(
//             top: 20,
//             left: 10,
//             right: 10,
//             child: Card(
//               child: Padding(
//                 padding: const EdgeInsets.all(12),
//                 child: Column(
//                   children: [
//                     Text("Distance: $distanceText"),
//                     Text("ETA: $durationText"),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }





// Search places using package


import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_places_flutter/google_places_flutter.dart';

class MapSearchScreen extends StatefulWidget {
  const MapSearchScreen({super.key});

  @override
  State<MapSearchScreen> createState() => _MapSearchScreenState();
}

class _MapSearchScreenState extends State<MapSearchScreen> {

  late GoogleMapController mapController;

  LatLng selectedLocation =
      const LatLng(13.067439, 80.237617);

  Set<Marker> markers = {};

  final String googleApiKey = "AIzaSyBmas8gFqYHPwAceZUWZPiFIVwWZwEiutU";

  void moveCamera(double lat, double lng) {

    final newPosition = LatLng(lat, lng);

    mapController.animateCamera(
      CameraUpdate.newLatLngZoom(newPosition, 15),
    );

    setState(() {
      selectedLocation = newPosition;
      markers = {
        Marker(
          markerId: const MarkerId("selected"),
          position: newPosition,
        )
      };
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [

          /// Map
          GoogleMap(
            initialCameraPosition: CameraPosition(
              target: selectedLocation,
              zoom: 13,
            ),
            onMapCreated: (controller) {
              mapController = controller;
            },
            markers: markers,
          ),

          /// Search bar
          Positioned(
            top: 50,
            left: 16,
            right: 16,
            child: GooglePlaceAutoCompleteTextField(
              textEditingController: TextEditingController(),
              googleAPIKey: googleApiKey,
              inputDecoration: const InputDecoration(
                hintText: "Search places...",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
              ),

              debounceTime: 800,

              isLatLngRequired: true,

              getPlaceDetailWithLatLng: (prediction) {

                double lat = double.parse(prediction.lat!);
                double lng = double.parse(prediction.lng!);

                moveCamera(lat, lng);
              },

              itemClick: (prediction) {},
            ),
          ),
        ],
      ),
    );
  }
}
