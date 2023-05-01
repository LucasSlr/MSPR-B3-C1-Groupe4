class Posts {

  int id;
  String libelle;
  String image;
  DateTime date_post;

  Posts(this.id, this.libelle, this.image, this.date_post);

  Posts.fromJson(Map<String, dynamic> json):
      id = json['id'],
      libelle = json['libelle'],
      image = json['image'],
      date_post = json['date_post'];
}