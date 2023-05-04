import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'homepage.dart';

class DemandeGarde extends StatefulWidget {
  const DemandeGarde({Key? key}) : super(key: key);

  @override
  State<DemandeGarde> createState() => _DemandeGardeState();
}

class _DemandeGardeState extends State<DemandeGarde> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("A Rosa-je"),
        backgroundColor: Colors.green,
      ),
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget> [
              Container(
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 30,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget> [
                      _buildSectionTitle(),
                      SizedBox(height: 10.0),
                      buildTitreDemande(),
                      SizedBox(height: 30),
                      buildLieuDemande(),
                      SizedBox(height: 30),
                      buildDateDebutGarde(),
                      SizedBox(height: 30),
                      buildDateFinGarde(),
                      SizedBox(height: 30),
                      buildLoginBtn(),
                    ],

                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildTitreDemande() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        Text(
          'Titre de la demande',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.black,
                  blurRadius: 6,
                  offset: Offset(0, 2)

              ),
            ],
          ),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.name,
            style: TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top:14),
              prefixIcon: Icon(
                Icons.title,
                color: Colors.grey,
              ),
              hintText: 'Titre de la demande',
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildLieuDemande() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        Text(
          'Lieu à Garder',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.black,
                  blurRadius: 6,
                  offset: Offset(0, 2)

              ),
            ],
          ),
          height: 60,
          child: TextField(
            keyboardType: TextInputType.name,
            style: TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top:14),
              prefixIcon: Icon(
                Icons.pin_drop,
                color: Colors.grey,
              ),
              hintText: 'Ville / Rue / Batiment ',
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildDateDebutGarde() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        Text(
          'Date début de Garde',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.black,
                  blurRadius: 6,
                  offset: Offset(0, 2)

              ),
            ],
          ),
          height: 60,
          // child: InputDatePickerFormField(firstDate: startDate, lastDate: endDate),
          child: TextField(
            keyboardType: TextInputType.name,
            style: TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top:14),
              prefixIcon: Icon(
                Icons.calendar_month,
                color: Colors.grey,
              ),
              hintText: 'Date Format JJ/MM/AAAA',
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildDateFinGarde() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        Text(
          'Date fin de Garde',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10),
        Container(
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  color: Colors.black,
                  blurRadius: 6,
                  offset: Offset(0, 2)

              ),
            ],
          ),
          height: 60,
          // child: InputDatePickerFormField(firstDate: startDate, lastDate: endDate),
          child: TextField(
            keyboardType: TextInputType.name,
            style: TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top:14),
              prefixIcon: Icon(
                Icons.calendar_month,
                color: Colors.grey,
              ),
              hintText: 'Date Format JJ/MM/AAAA',
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: ElevatedButton
        (
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage()),);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
        ),
        child: Text('Confirmer',
          style: TextStyle(
            color: Colors.grey,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  _buildSectionTitle() {
    return Container(
      height: 65,
      child: Text('Demande de Garde',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 35,
          color: Colors.green,
          fontWeight: FontWeight.bold,
        ),
      ),

    );
  }
}
