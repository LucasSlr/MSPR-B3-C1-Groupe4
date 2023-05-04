import 'package:flutter/material.dart';

class AstucePage extends StatelessWidget {
  const AstucePage({Key? key}) : super(key: key);

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
            _buildSectionTitlePlante('Les Astuces'),
            SizedBox(height: 20.0),
            _buildSectionItemConseil('Mettre les plantes sur le sol \nest un bon moyen de \nraffraichir la racine'),
            SizedBox(height: 20.0),
            _buildSectionItemConseil('N\'hésitez pas à consulter un \nspécialiste pour vous aider à placer \nles plantes dans votre maison'),
            SizedBox(height: 20.0),
            _buildSectionItemConseil('L\'éxes d\'arrosage est \nplus redoutable que son \ninsuffisance'),
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
      child: Text('Astuce Botaniste',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 35,
          color: Colors.green,
          fontWeight: FontWeight.bold,
        ),
      ),

    );
  }

  _buildSectionItemConseil(String conseil) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '$conseil',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
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
            'Mettre les plantes sur le sol \nest un bon moyen de \nraffraichir la racine',
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
                'Placé la plante proche d\'une \nsource lumineuse',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20.0,
            ),
          ),
        ],
      ),
    );
  }

  _buildSectionItemConseilTulipe() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'A proteger du soleil \n'
                'Éloignée des sources de chaleur \n'
                'Arrosage quotidien',
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
