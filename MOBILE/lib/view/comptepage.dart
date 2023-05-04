
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:msprapp/view/comptepage.dart';
import 'package:msprapp/view/historiquedemandepage.dart';
import 'package:msprapp/view/homepagemessage.dart';
import 'package:msprapp/view/login.dart';
import 'package:msprapp/view/maps.dart';
import 'package:msprapp/view/image_picker.dart';
import 'package:msprapp/view/planteautourpage.dart';
import 'package:msprapp/view/plantepage.dart';

import 'astucepage.dart';
import 'conseilpage.dart';
import 'demandepage.dart';
import 'homepage.dart';

class ComptePage extends StatefulWidget {

  const ComptePage({Key? key}): super(key: key);

  @override
  State<ComptePage> createState() => _ComptePageState();
}

class _ComptePageState extends State<ComptePage> {
  @override build(BuildContext context){
    return Scaffold(
      body: Container(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 10.0),
            _buildWidgetTitle(),
            SizedBox(height: 50.0),
            _buildSectionTitle('Mon Compte'),
            SizedBox(height: 20.0),
            _buildSectionItemCompte('Nom : test'),
            SizedBox(height: 20.0),
            _buildSectionItemCompte('Prenom : user'),
            SizedBox(height: 20.0),
            _buildSectionItemCompte('Login : test.user'),
            SizedBox(height: 20.0),
            _buildSectionItemCompte('Mot de pass : test'),
            SizedBox(height: 20.0),
            _buildSectionItemCompte('Adresse : Montpellier Route de \nGanges Apothicaire'),
            SizedBox(height: 20.0),
            _buildSectionTitle('Plante posseder'),
            SizedBox(height: 20.0),
            _buildSectionItemPlante('Pissenlit'),
            SizedBox(height: 10.0),
            _buildSectionItemPlante('Fougère'),
            SizedBox(height: 10.0),
            _buildSectionItemPlante('Orchidée'),
            SizedBox(height: 10.0),
            _buildSectionItemPlante('Tulipes'),
          ],
        ),
      ),

      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [
              Colors.lightGreen,
              Colors.lightGreen,
              Colors.green,
              Colors.green,
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
          child: GNav(
            selectedIndex: 4,
            color: Colors.white,
            activeColor: Colors.white,
            gap: 8,
            onTabChange: (index){
              print(index);

              Scaffold(
                body: AnnotatedRegion(
                  value: SystemUiOverlayStyle.light,
                  child: GestureDetector(
                    child: Stack(
                      children: <Widget> [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.green,
                                Colors.lightGreen,
                                Colors.green,
                                Colors.lightGreen,
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );

              if(index == 0){
                Scaffold(
                  body: Container(
                    height: 100,
                    width: 100,
                    margin: const EdgeInsets.all(100),
                    child: Text("A Rosa-je"),
                    decoration: BoxDecoration(
                      color: Colors.green,
                    ),
                  ),
                );
              }

              if(index == 0){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              }

              if(index == 1){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ImagePicker()),
                );
              }

              if(index == 2){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LocationPage()),
                );
              }

              if(index == 3){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePageMessage()),
                );
              }

              if(index == 4){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ComptePage()),
                );
              }

            },
            padding: EdgeInsets.all(16),
            tabs: [
              GButton(
                icon: Icons.home,
                text: 'Accueil',
              ),GButton(
                icon: Icons.photo_camera,
                text: 'Photo',
              ),GButton(
                icon: Icons.place,
                text: 'Maps',

              ),GButton(
                icon: Icons.message,
                text: 'Message',

              ),GButton(
                icon: Icons.account_circle_sharp,
                text: 'Compte',
              ),
            ],
          ),
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


  _buildSectionTitle(String title) {
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

  _buildSectionItemCompte(String historique) {
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

  _buildSectionItemPlante(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: ElevatedButton(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              '$title',
              style: TextStyle(
                color: Colors.green,
                fontSize: 20.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        onPressed : () {
          Navigator.push(context,
            MaterialPageRoute(builder: (context) => PlantePage('$title')),
          );
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
        ),
      ),
    );
  }
}