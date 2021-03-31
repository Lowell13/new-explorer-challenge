import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:nec/pages/maps/secrets.dart';

class MapWithPath extends StatefulWidget {
  @override
  _MapWithPathState createState() => _MapWithPathState();
}

class _MapWithPathState extends State<MapWithPath> {
  final Geolocator _geolocator = Geolocator();
  final startAddressFocusNode = FocusNode();
  final destinationAddressFocusNode = FocusNode();
  // For storing the current position
  Position _currentPosition;
  Set<Marker> markers = {};

  Marker startMarker = Marker(
      markerId: MarkerId('Début'),
      position: LatLng(48.10905130645174, -1.664694467987981),
      icon: BitmapDescriptor.defaultMarker);

  Marker step1Marker = Marker(
      markerId: MarkerId('étape 1'),
      position: LatLng(48.10755732844376, -1.6531465135041756),
      icon: BitmapDescriptor.defaultMarker);
  Marker step2Marker = Marker(
      markerId: MarkerId('étape 2'),
      position: LatLng(48.10962960885994, -1.6531104261464133),
      icon: BitmapDescriptor.defaultMarker);
  Marker lastMarker = Marker(
      markerId: MarkerId('fin'),
      position: LatLng(48.11420760662755, -1.6096251590697035),
      icon: BitmapDescriptor.defaultMarker);

  Future<bool> _calculateDistance() async {
    try {
      markers.add(startMarker);
      markers.add(lastMarker);

      Position _northeastCoordinates;
      Position _southwestCoordinates;

      // Calculating to check that the position relative
      // to the frame, and pan & zoom the camera accordingly.
      double miny =
          (startMarker.position.latitude <= lastMarker.position.latitude)
              ? startMarker.position.latitude
              : lastMarker.position.latitude;
      double minx =
          (startMarker.position.longitude <= lastMarker.position.longitude)
              ? startMarker.position.longitude
              : lastMarker.position.longitude;
      double maxy =
          (startMarker.position.latitude <= lastMarker.position.latitude)
              ? lastMarker.position.latitude
              : startMarker.position.latitude;
      double maxx =
          (startMarker.position.longitude <= lastMarker.position.longitude)
              ? lastMarker.position.longitude
              : startMarker.position.longitude;

      _southwestCoordinates = Position(latitude: miny, longitude: minx);
      _northeastCoordinates = Position(latitude: maxy, longitude: maxx);

      // Accommodate the two locations within the
      // camera view of the map
      mapController.animateCamera(
        CameraUpdate.newLatLngBounds(
          LatLngBounds(
            northeast: LatLng(
              _northeastCoordinates.latitude,
              _northeastCoordinates.longitude,
            ),
            southwest: LatLng(
              _southwestCoordinates.latitude,
              _southwestCoordinates.longitude,
            ),
          ),
          100.0,
        ),
      );

      await _createPolylines(startMarker, lastMarker);

      return true;
    } catch (e) {
      print(e);
    }
    return false;
  }

// Object for PolylinePoints
  PolylinePoints polylinePoints;

// List of coordinates to join
  List<LatLng> polylineCoordinates = [];

// Map storing polylines created by connecting points
  Map<PolylineId, Polyline> polylines = {};

  List<LatLng> _createPoints() {
    final List<LatLng> points = <LatLng>[];
    points.add(LatLng(48.10905130645174, -1.664694467987981));
    points.add(LatLng(48.10755732844376, -1.6531465135041756));
    points.add(LatLng(48.10962960885994, -1.6531104261464133));
    points.add(LatLng(48.11420760662755, -1.6096251590697035));
    return points;
  }
  // Create the polylines for showing the route between two places

  _createPolylines(Marker start, Marker destination) async {
    // Initializing PolylinePoints
    polylinePoints = PolylinePoints();

    // Generating the list of coordinates to be used for
    // drawing the polylines
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      Secrets.API_KEY, // Google Maps API Key
      PointLatLng(start.position.latitude, start.position.longitude),
      PointLatLng(destination.position.latitude, destination.position.longitude),

      travelMode: TravelMode.walking,
    );
    print('coucou');
    print(result.toString());
    print(result.errorMessage);
    print(result.status);
    // Adding the coordinates to the list
    if (result.points.isNotEmpty) {
      result.points.forEach((PointLatLng point) {
        polylineCoordinates.add(LatLng(point.latitude, point.longitude));
        print('je suis dans les points ');
      });
    }

    // Defining an ID
    PolylineId id = PolylineId('poly');

    // Initializing Polyline
    Polyline polyline = Polyline(
      polylineId: id,
      color: Colors.red,
      points: polylineCoordinates,
      width: 3,
    );

    // Adding the polyline to the map
    polylines[id] = polyline;
  }

  GoogleMapController mapController;

  // Method for retrieving the current location
  _getCurrentLocation() async {
    await _geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high)
        .then((Position position) async {
      setState(() {
        // Store the position in the variable
        _currentPosition = position;

        print('CURRENT POS: $_currentPosition');

        // For moving the camera to current location
        mapController.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(
              target: LatLng(position.latitude, position.longitude),
              zoom: 18.0,
            ),
          ),
        );
      });
    }).catchError((e) {
      print(e);
    });
  }

  CameraPosition _initialLocation = CameraPosition(target: LatLng(0.0, 0.0));

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Container(
      height: height,
      width: width,
      child: Scaffold(
        body: Stack(
          children: [
            GoogleMap(
              initialCameraPosition: _initialLocation,
              myLocationEnabled: true,
              myLocationButtonEnabled: false,
              mapType: MapType.normal,
              zoomGesturesEnabled: true,
              zoomControlsEnabled: false,
              markers: markers != null ? Set<Marker>.from(markers) : null,
              polylines: Set<Polyline>.of(polylines.values),
              onMapCreated: (GoogleMapController controller) {
                mapController = controller;
              },
            ),
            SafeArea(
                child: Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                        padding:
                            const EdgeInsets.only(right: 10.0, bottom: 10.0),
                        child: ClipOval(
                            child: Material(
                          color: Colors.orange[100], // button color
                          child: InkWell(
                            splashColor: Colors.orange, // inkwell color
                            child: SizedBox(
                              width: 56,
                              height: 56,
                              child: Icon(Icons.my_location),
                            ),
                            onTap: () {
                              mapController.animateCamera(
                                CameraUpdate.newCameraPosition(
                                  CameraPosition(
                                    target: LatLng(
                                      _currentPosition.latitude,
                                      _currentPosition.longitude,
                                    ),
                                    zoom: 18.0,
                                  ),
                                ),
                              );
                            },
                          ),
                        )
                        )
                    )
                )
            ),
            SafeArea(
              child: Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white70,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    width: width * 0.9,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          SizedBox(height: 10),
                          SizedBox(height: 5),
                          RaisedButton(
                            onPressed: () async {
                              startAddressFocusNode.unfocus();
                              destinationAddressFocusNode.unfocus();
                              setState(() {
                                if (markers.isNotEmpty) markers.clear();
                                if (polylines.isNotEmpty) polylines.clear();
                                if (polylineCoordinates.isNotEmpty)
                                  polylineCoordinates.clear();

                              });

                              _calculateDistance();
                            },
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Go'.toUpperCase(),
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
