import 'package:flutter/material.dart';
import 'package:msprapp/view/homepage.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// const LatLng currentLocation = LatLng( 43.633735, 3.853324);

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Maps"),
        backgroundColor: Colors.green,
        leading: ElevatedButton(
          onPressed: (){
            Navigator.push(context,
              MaterialPageRoute(builder: (context) => HomePage()),
            );
          },
          child: null,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.green,
          ),
        ),
      ),
      // body: GoogleMap(
      //   initialCameraPosition: CameraPosition(
      //       target: LatLng(0,0),
      //   ),
      // ),
    );
  }
}
