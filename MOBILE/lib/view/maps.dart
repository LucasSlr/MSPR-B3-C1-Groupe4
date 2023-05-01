import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// const LatLng currentLocation = LatLng( 43.633735, 3.853324);

class MapsPage extends StatefulWidget {
  const MapsPage({Key? key}) : super(key: key);

  @override
  State<MapsPage> createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Maps"),
        backgroundColor: Colors.green,
      ),
      // body: GoogleMap(
      //   initialCameraPosition: CameraPosition(
      //       target: LatLng(0,0),
      //   ),
      // ),
    );
  }
}
