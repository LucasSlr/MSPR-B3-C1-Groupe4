import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

import '../models/plante.dart';
import '../service/plante_service.dart';

class PlantePage extends StatelessWidget {
  int id;
  final PlanteService service = PlanteService();
  late Plante plantes = service.getPlanteById(id);
  PlantePage(this.id, {Key? key}) : super(key: key);


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
            _buildSectionTitlePlante(plantes.nom_plante),
            SizedBox(height: 10.0),
            _buildImagePlante(plantes),
            SizedBox(height: 10.0),
            _buildSectionInformation(),
            SizedBox(height: 10.0),
            _buildSectionInformationPlante(plantes),
          ],
        ),
      ),
    );
  }

  _buildSectionTitlePlante(String plante) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            plante,
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  _buildSectionInformation() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Informations :',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  _buildSectionInformationPlante(Plante plante) {
    var date_plante = plante.date_plante;
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            'Vous possedez cette plante \ndepuis le $date_plante',
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

  _buildImagePlante(Plante plante){
    var image = plante.image_plante.toLowerCase();
    return ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: Image.asset(
          'assets/images/plante/$image',
          fit: BoxFit.fitWidth,
      ),
    );
  }

}
