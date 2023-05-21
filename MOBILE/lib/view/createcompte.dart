import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:msprapp/models/users.dart';
import 'package:msprapp/service/users_service.dart';

import 'homepage.dart';

class CreateScreen extends StatefulWidget {
  CreateScreen({Key? key}) : super(key: key);

  @override
  State<CreateScreen> createState() => _CreateScreenState();
}

class _CreateScreenState extends State<CreateScreen> {
  bool isRememberMe = false;
  final nom = TextEditingController();
  final prenom = TextEditingController();
  final nomUser = TextEditingController();
  final pass = TextEditingController();
  final passConfirm = TextEditingController();

  Widget build(BuildContext context) {
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
                        'Inscription',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                      SizedBox(height: 30),
                      buildNom(),
                      SizedBox(height: 20),
                      buildPrenom(),
                      SizedBox(height: 20),
                      buildPass(),
                      SizedBox(height: 20),
                      buildPassConfirm(),
                      SizedBox(height: 10),
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

  Widget buildNom() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        Text(
          'Nom',
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
            controller: nom,
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
              hintText: 'Nom',
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildPrenom() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        Text(
          'Prenom',
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
            controller: prenom,
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
              hintText: 'Prenom',
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildLogin() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        Text(
          'Nom d\'utilisateur',
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
            controller: nomUser,
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
              hintText: 'Nom \'utilisateur',
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
          'Mot de passe',
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
            obscureText: true,
            enableSuggestions: false,
            controller: pass,
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
              hintText: 'mot de passe',
              hintStyle: TextStyle(
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildPassConfirm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        Text(
          'Confirmez votre mot de passe',
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
            obscureText: true,
            enableSuggestions: false,
            controller: passConfirm,
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
              hintText: 'mot de passe',
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
    final UserService userService = UserService();
    final countUser = userService.CountUser();
    print(countUser);
    final futureId = countUser + 1 ;
    var nomText = nom.text;
    var prenomText = prenom.text;
    final login = '$prenomText\.$nomText';
    print('Geeks''For''Geeks');
    print(login);
    bool checkNom;
    bool checkPrenom;
    bool checkPass;
    bool checkPassConfirm;
    bool comparePass;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25),
      width: double.infinity,
      child: ElevatedButton
        (
        onPressed: () {

          if (nom.text == ""){
            checkNom = false;
          }else{
            checkNom = true;
          }

          if (prenom.text == ""){
            checkPrenom = false;
          }else{
            checkPrenom = true;
          }

          if (pass.text == ""){
            checkPass = false;
          }else{
            if(pass.text.length < 2){
              checkPass = false;
            }else{
              checkPass = true;
            }
          }

          if (passConfirm.text == ""){
            checkPassConfirm = false;
          }else{
            checkPassConfirm = true;
          }

          if (pass.text != passConfirm.text){
            comparePass = false;
          }else{
            comparePass = true;
          }

          if(checkNom == true && checkPrenom == true && checkPass == true && checkPassConfirm == true && comparePass == true ){
            Users createUser = Users.require(futureId,nom.text,prenom.text,login,pass.text);
            print(createUser.id);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => HomePage(usersConnected: createUser)),
            );
          }else{

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

}
