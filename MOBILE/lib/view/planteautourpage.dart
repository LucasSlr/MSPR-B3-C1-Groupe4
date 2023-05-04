import 'dart:math';

import 'package:flutter/material.dart';

class PlanteAutourPage extends StatelessWidget {
  String title;
  PlanteAutourPage(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var number = randomIntBetween();
    return Scaffold(
      appBar: AppBar(
        title: Text("Plante"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: ListView(
          children: [
            SizedBox(height: 30.0),
            _buildSectionTitle(),
            SizedBox(height: 10.0),
            _buildSectionTitlePlante('$title'),
            SizedBox(height: 10.0),
            _buildImagePlante('$title.jpg'.toLowerCase()),
            SizedBox(height: 10.0),
            _buildSectionTitlePlante('Informations :'),
            SizedBox(height: 10.0),
            _buildSectionInformationPlante('$number'),
          ],
        ),
      ),
    );
  }

  _buildSectionTitlePlante(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '$title',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  _buildSectionTitle() {
    return Container(
      height: 65,
      child: Text('Plante Autours',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 35,
          color: Colors.green,
          fontWeight: FontWeight.bold,
        ),
      ),

    );
  }

  _buildWidgetTitle(){
    return Container(
      height: 65,
      decoration: BoxDecoration(
        // color: Color.fromARGB(250, 21, 163, 98)
          color: Colors.green
      ),
      child: Text('A Rosa-je',
        textAlign: TextAlign.center,
        style: TextStyle(
            fontSize: 50,
            color: Colors.white
        ),
      ),

    );
  }

  _buildImagePlante(String image){
    print(title);
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.asset(
          'assets/images/plante/$image',
          fit: BoxFit.fitWidth
      ),
    );
  }

  _buildSectionInformationPlante(String km) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Plante situé à $km km de votre \nposition',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    );
  }

  randomIntBetween() {
    final random = Random();
    return 5 + random.nextInt(50 - 5 + 1);
  }
}
