import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HistoriquePage extends StatelessWidget {
  const HistoriquePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final date = randomDateBetween();
    final date1 = randomDateBetween();
    final date2 = randomDateBetween();
    return Scaffold(
      appBar: AppBar(
        title: Text("A Rosa-je"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        child: ListView(
          children: [
            SizedBox(height: 30.0),
            _buildSectionTitle(),
            SizedBox(height: 10.0),
            _buildSectionTitlePlante('Les Gardes'),
            SizedBox(height: 20.0),
            _buildSectionItemConseil('Date Garde : $date \nLieu Garde : Montpellier \nRoute de Ganges Apothicaire'),
            SizedBox(height: 20.0),
            _buildSectionItemConseil('Date Garde : $date1 \nLieu Garde : Montpellier \nRoute de Ganges Pise/Sienne'),
            SizedBox(height: 20.0),
            _buildSectionItemConseil('Date Garde : $date2 \nLieu Garde : Montpellier \n Le Millénaire Batiment Phoenix'),
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
      height: 90,
      child: Text('Historique\ndes gardes',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 35,
          color: Colors.green,
          fontWeight: FontWeight.bold,
        ),
      ),

    );
  }

  _buildSectionItemConseil(String historique) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '$historique',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
          ),
        ],
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
