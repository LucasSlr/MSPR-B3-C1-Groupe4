import 'package:flutter/material.dart';

class ConseilPage extends StatelessWidget {
  const ConseilPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
            _buildSectionTitlePlante('Les Conseils'),
            SizedBox(height: 20.0),
            _buildSectionItemPlante('Pissenlit'),
            SizedBox(height: 10.0),
            _buildSectionItemConseilPissenlit(),
            SizedBox(height: 20.0),
            _buildSectionItemPlante('Orchidée'),
            SizedBox(height: 10.0),
            _buildSectionItemConseilOrchidee(),
            SizedBox(height: 20.0),
            _buildSectionItemPlante('Tulipes'),
            SizedBox(height: 10.0),
            _buildSectionItemConseilOrchidee(),
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
      child: Text('Conseil Botaniste',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 35,
          color: Colors.green,
          fontWeight: FontWeight.bold,
        ),
      ),

    );
  }

  _buildSectionItemPlante(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              '$title',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
    );
  }

  _buildSectionItemConseilPissenlit() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Necessite peu d\'entretien \n'
            'Maintenir sur sol frais \n'
            'Arrosage quotidien'
            ,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    );
  }

  _buildSectionItemConseilOrchidee() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Arrosage Fréquent \n'
            'Placé la plante proche d\'une \nsource lumineuse \n',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    );
  }
}
