class TypeUsers {
  int id;
  String libelle;

  TypeUsers(this.id, this.libelle);

  TypeUsers.fromJson(Map<String, dynamic> json):
      id = json['id'],
      libelle = json['libelle'];
}