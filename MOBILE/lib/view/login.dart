import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:msprapp/service/users_service.dart';
import 'package:msprapp/view/createcompte.dart';
import 'package:msprapp/view/homepage.dart';

import '../models/users.dart';
import 'homepagebota.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final UserService userService = UserService();

  bool isRememberMe = false;
  final login = TextEditingController();
  final pass = TextEditingController();

  @override
  Widget build (BuildContext context) {
    return Scaffold(
      body: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: GestureDetector(
          child: Stack(
            children: <Widget> [
              Container(
                height: double.infinity,
                width: double.infinity,
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
                child: SingleChildScrollView(
                  padding: EdgeInsets.symmetric(
                    horizontal: 25,
                    vertical: 120,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget> [
                      Text(
                        'A Rosa-je',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      SizedBox(height: 60),
                      buildLogin(),
                      SizedBox(height: 30),
                      buildPassComfirm(),
                      SizedBox(height: 30),
                      buildForgetPass(),
                      buildRememberCb(),
                      buildLoginBtn(),
                      buildSignInBtn(),
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

  Widget buildLogin() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        Text(
          'Identifiant',
          style: TextStyle(
            color: Colors.white,
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
            controller: login,
            keyboardType: TextInputType.name,
            style: TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top:14),
              prefixIcon: Icon(
                Icons.account_circle_sharp,
                color: Colors.green,
              ),
              hintText: 'Login',
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildPass() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        Text(
          'Identifiant ',
          style: TextStyle(
            color: Colors.white,
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
            controller: pass,
            obscureText: true,
            style: TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top:14),
              prefixIcon: Icon(
                Icons.account_circle_sharp,
                color: Colors.green,
              ),
              hintText: 'Login',
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildPassComfirm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        Text(
          'Confirmez votre Mot de Passe',
          style: TextStyle(
            color: Colors.white,
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
            controller: pass,
            obscureText: true,
            style: TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
              border: InputBorder.none,
              contentPadding: EdgeInsets.only(top:14),
              prefixIcon: Icon(
                Icons.lock,
                color: Colors.green,
              ),
              hintText: 'Mot de passe',
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildForgetPass() {
    return Container(
      alignment: Alignment.centerRight,
      child: TextButton(
        onPressed: () => print("Mdp oublié"),
        child: Text(
          "Mot de passe Oublié",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget buildRememberCb(){
    return Container(
      height: 20,
      child: Row(
        children: <Widget> [
          Theme(
            data: ThemeData(unselectedWidgetColor: Colors.white),
            child: Checkbox(
              value: isRememberMe,
              checkColor: Colors.green,
              activeColor: Colors.white,
              onChanged: (value) {
                setState(() {
                  isRememberMe = value!;
                });
              },
            ),
          ),
          Text(
            "Rester connecté",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
            ),
          ),
        ],
      ),
    );
  }

  Widget buildLoginBtn() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: ElevatedButton
        (
        onPressed: () {

          try {
            final Users users = userService.getUserByName(login.text);
            if(users.mdp == pass.text){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage(usersConnected: users)),
              );
            }
          } catch (e){
            print('Une erreur s\'est produite : $e');
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
        ),
        child: Text('Confirmer',
          style: TextStyle(
            color: Colors.green,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget buildSignInBtn() {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => CreateScreen()),
      ),
      child: RichText(
        text: TextSpan(
          children: [
            TextSpan(
              text: "Vous n\'avez pas de Compte",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500
              ),
            ),
            TextSpan(
              text: ' \nCréer un compte',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}