
class Specialite {

  final int id_spe;
  final String libelle_spe;

  Specialite(this.id_spe, this.libelle_spe);

  Specialite.fromJson(Map<String, dynamic> json):
        id_spe = json['id_spe'],
        libelle_spe = json['libelle_spe'];

  Map<String, dynamic> toMap() {
    return {
      'id_spe' : id_spe,
      'libelle_spe' : libelle_spe,
    };
  }

  factory Specialite.fromMap(Map<String, dynamic> map) => new Specialite(
    map['id_spe'],
    map['libelle_spe'],
  );

}