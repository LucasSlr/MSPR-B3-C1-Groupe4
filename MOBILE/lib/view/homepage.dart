
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:msprapp/view/login.dart';
import 'package:msprapp/view/maps.dart';
import 'package:msprapp/widgets/picker/image_picker.dart';

class HomePage extends StatefulWidget {

  const HomePage({Key? key}): super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override build(BuildContext context){
    return Scaffold(
      // body: Container(
      //   height: 100,
      //   width: 100,
      //   margin: const EdgeInsets.all(100),
      //   child: Text("A Rosa-je"),
      //   decoration: BoxDecoration(
      //   color: Colors.green,
      //   ),
      // ),
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

              if(index == 1){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ImagePicker()),
              );
            }

            if(index == 2){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MapsPage()),
              );
            }

            if(index == 3){
              // Navigator.push(
              //   context,
              //   MaterialPageRoute(builder: (context) => MapsPage()),
              // );
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
}