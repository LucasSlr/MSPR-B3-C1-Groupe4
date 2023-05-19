import 'package:msprapp/models/plante.dart';
import 'package:msprapp/models/type_users.dart';

class Users {

  int id;
  String nom;
  String prenom;
  String login;
  String mdp;
  List<Plante> ?plante;
  // TypeUsers typeUsers;

  Users(this.id, this.nom, this.prenom, this.login, this.mdp, this.plante);

  Users.fromJson(Map<String, dynamic> json):
      id = json['id'],
      nom = json['nom'],
      prenom = json['prenom'],
      login = json['login'],
      mdp = json['mdp'],
      plante = (json['items'] as List).map((item) => Plante
          .fromJson(item))
          .toList();


  Map<String, dynamic> toMap() {
    return {
      'id' : id,
      'nom' : nom,
      'prenom' : prenom,
      'login' : login,
      'mdp' : mdp,
      'plante' : plante,
      // 'typeUsers' : typeUsers
    };
  }

  factory Users.fromMap(Map<String, dynamic> map) => new Users(
      map['id'],
      map['nom'],
      map['prenom'],
      map['login'],
      map['mdp'],
      map['plante'],
      // map['typeUsers'],
  );

}