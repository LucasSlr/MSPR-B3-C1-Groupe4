
class Plante {

  final int id_plante;
  final String nom_plante;
  final String image_plante;
  final String date_plante;

  Plante(this.id_plante, this.nom_plante, this.image_plante, this.date_plante);

  Plante.fromJson(Map<String, dynamic> json):
      id_plante = json['id_plante'],
      nom_plante = json['nom_plante'],
      image_plante = json['image_plante'],
      date_plante = json['date_plante'];

  Map<String, dynamic> toMap() {
    return {
      'id_plante' : id_plante,
      'nom_plante' : nom_plante,
      'image_plante' : image_plante,
      'date_plante' : date_plante,
    };
  }

  factory Plante.fromMap(Map<String, dynamic> map) => new Plante(
    map['id_plante'],
    map['nom_plante'],
    map['image_plante'],
    map['date_plante'],
  );

}