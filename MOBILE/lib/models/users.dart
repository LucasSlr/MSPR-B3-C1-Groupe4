import 'package:msprapp/models/plante.dart';
import 'package:msprapp/models/specialite.dart';

class Users {

  int id;
  String nom;
  String prenom;
  String login;
  String mdp;
  String? ville;
  String? adrs_rue;
  String? info_adresse;
  List<Plante> ?plante;
  List<Specialite> ?spe;

  Users(this.id, this.nom, this.prenom, this.login, this.mdp, this.ville, this.adrs_rue, this.info_adresse, this.plante, this.spe);
  Users.require(this.id, this.nom, this.prenom, this.login, this.mdp);

  Users.fromJson(Map<String, dynamic> json):
      id = json['id'],
      nom = json['nom'],
      prenom = json['prenom'],
      login = json['login'],
      mdp = json['mdp'],
      ville = json['ville'],
      adrs_rue = json['adrs_rue'],
      info_adresse = json['info_adresse'],
      plante = (json['items'] as List).map((item) => Plante
          .fromJson(item))
          .toList(),
      spe = (json['items'] as List).map((item) => Specialite
          .fromJson(item))
          .toList();


  Map<String, dynamic> toMap() {
    return {
      'id' : id,
      'nom' : nom,
      'prenom' : prenom,
      'login' : login,
      'mdp' : mdp,
      'ville' : ville,
      'adrs_rue' : adrs_rue,
      'info_adresse' : info_adresse,
      'plante' : plante,
      'spe' : spe,
    };
  }

  factory Users.fromMap(Map<String, dynamic> map) => new Users(
      map['id'],
      map['nom'],
      map['prenom'],
      map['login'],
      map['mdp'],
      map['ville'],
      map['adrs_rue'],
      map['info_adresse'],
      map['plante'],
      map['spe'],
  );

}