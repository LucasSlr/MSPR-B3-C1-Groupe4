import 'package:flutter/material.dart';

class PlanteAutourPage extends StatelessWidget {
  const PlanteAutourPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Plante proches"),
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
