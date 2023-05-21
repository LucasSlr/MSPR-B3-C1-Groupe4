
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:msprapp/view/login.dart';
import 'package:msprapp/view/maps.dart';
import 'package:msprapp/view/image_picker.dart';

import '../models/users.dart';

class HomePageBota extends StatefulWidget {
  final Users usersConnected;
  HomePageBota({Key? key, required this.usersConnected}): super(key: key);

  @override
  State<HomePageBota> createState() => _HomePageBotaState();
}

class _HomePageBotaState extends State<HomePageBota> {
  @override build(BuildContext context){
    return Scaffold(
      body: Container(
        child: ListView(
            children: <Widget>[
              SizedBox(height: 10.0),
              _buildWidgetTitle(),
              SizedBox(height: 50.0),
              _buildSectionTitle('Mes conseils'),
              SizedBox(height: 20.0),
              _buildSectionItem('Ajouter conseil'),
              SizedBox(height: 10.0),
              _buildSectionItem('Historique'),
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
                Navigator.push(context,
                  MaterialPageRoute(builder: (context) => HomePageBota(usersConnected: widget.usersConnected)),
                    );
              }

              if(index == 1){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ImagePicker(usersConnected: widget.usersConnected)),
              );
            }

            if(index == 2){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LocationPage(usersConnected: widget.usersConnected)),
              );
            }

            if(index == 3){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LocationPage(usersConnected: widget.usersConnected)),
              );
            }

            if(index == 4){
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => MapsPage()),
              // );
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
      decoration: BoxDecoration(
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

  _buildSectionHome(){
    return Container(
        child: ListView(
          children: <Widget>[
            SizedBox(height: 10.0),
            _buildWidgetTitle(),
            SizedBox(height: 50.0),
            _buildSectionTitle('Mes Plantes'),
            SizedBox(height: 20.0),
            _buildSectionItem('Pissenlit'),
            SizedBox(height: 10.0),
            _buildSectionItem('Fougère'),
            SizedBox(height: 10.0),
            _buildSectionItem('Orchidée'),
            SizedBox(height: 10.0),
            _buildSectionItem('Tulipes'),

            SizedBox(height: 20.0),
            _buildSectionTitle('Les plantes Autours'),
            SizedBox(height: 20.0),
            _buildSectionItem('Cactus'),
            SizedBox(height: 10.0),
            _buildSectionItem('Lilas'),
            SizedBox(height: 10.0),
            _buildSectionItem('Roses'),
            SizedBox(height: 10.0),
            _buildSectionItem('Hortensia'),
            SizedBox(height: 10.0),
            _buildSectionItem('Menthe'),


            SizedBox(height: 20.0),
            _buildSectionTitle('Conseil Entretient'),
            SizedBox(height: 20.0),
            _buildSectionItem('Vos Plantes'),
            SizedBox(height: 10.0),
            _buildSectionItem('Astuce'),

            SizedBox(height: 20.0),
            _buildSectionTitle('Gardes'),
            SizedBox(height: 20.0),
            _buildSectionItem('Demander une garde'),
            SizedBox(height: 10.0),
            _buildSectionItem('Historique'),
            SizedBox(height: 20.0),
          ],
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

  _buildSectionItem(String title) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            '$title',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}