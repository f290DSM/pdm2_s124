import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';
import 'package:permission_handler/permission_handler.dart' as permission;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late LatLng userPosition;

  Future<LatLng> getUserLocation() async {
    Location location = Location();
    LocationData userLocation;

    PermissionStatus status = await location.requestPermission();
    bool active = await location.serviceEnabled();

    if (status == PermissionStatus.granted && active) {
      userLocation = await location.getLocation();
      userPosition = LatLng(userLocation.latitude!, userLocation.longitude!);
      log('LocationData: $userLocation');
    } else {
      userPosition = const LatLng(-22.557483, -47.412402);
    }

    return userPosition;
  }

  @override
  void initState() {
    // getuserLocation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('POC Google Maps'),
      ),
      body: FutureBuilder(
        future: getUserLocation(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasData) {
            return GoogleMap(
              initialCameraPosition: CameraPosition(
                target: snapshot.data,
                zoom: 15,
              ),
            );
          }
          return const Center(
            child: SizedBox(
              width: 150,
              height: 150,
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}
