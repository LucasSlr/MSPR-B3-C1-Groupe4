import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class PlantePage extends StatelessWidget {
  String title;
  PlantePage(this.title, {Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    final date = randomDateBetween();
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
            _buildSectionInformationPlante('$date'),
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

  _buildSectionInformationPlante(String dateAnniv) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Vous possedez cette plante \ndepuis le $dateAnniv',
            style: TextStyle(
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    );
  }

  _buildSectionTitle() {
    return Container(
      height: 65,
      child: Text('Ma Plante',
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

  _buildImagePlante(String title){
    print(title);
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.asset(
          'assets/images/plante/$title',
          fit: BoxFit.fitWidth,
      ),
    );
  }

   randomDateBetween() {
    final random = Random();
    final startDate = DateTime(2022, 9, 1);
    final endDate = DateTime(2023, 4, 31);

    // Calculate the difference between the two dates in days
    final difference = endDate.difference(startDate).inDays;

    // Generate a random number between 0 and the difference in days
    final randomDays = random.nextInt(difference + 1);

    // Add the random number of days to the start date to get the random date
    final randomDate = startDate.add(Duration(days: randomDays));

    final formattedDate = DateFormat('dd/MM/yyyy').format(randomDate);

    return formattedDate;
  }
}
