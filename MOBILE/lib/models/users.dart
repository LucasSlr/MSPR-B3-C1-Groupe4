import 'package:msprapp/models/type_users.dart';

class Users {

  int id;
  String nom;
  String prenom;
  String login;
  String mdp;
  TypeUsers typeUsers;

  Users(this.id, this.nom, this.prenom, this.login, this.mdp, this.typeUsers);

  Users.fromJson(Map<String, dynamic> json):
      id = json['id'],
      nom = json['nom'],
      prenom = json['prenom'],
      login = json['login'],
      mdp = json['mdp'], 
      typeUsers = TypeUsers.fromJson(json['typeUsers']);


}