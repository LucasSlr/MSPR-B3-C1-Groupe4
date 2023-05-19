import 'package:msprapp/models/plante.dart';

class PlanteData {

  static List<Plante> buildList() {
    List<Plante> _list = [];

    _list.add(Plante(1, "Pissenlit", "Pissenlit.jpg", "07/04/2023"));
    _list.add(Plante(2, "Fougère", "Fougère.jpg", "07/04/2023"));
    _list.add(Plante(3, "Orchidée", "Orchidée.jpg", "07/04/2023"));
    _list.add(Plante(4, "Tulipes", "Tulipes.jpg", "07/04/2023"));
    _list.add(Plante(5, "Cactus", "Cactus.jpg", "07/04/2023"));
    _list.add(Plante(6, "Lilas", "Lilas.jpg", "07/04/2023"));
    _list.add(Plante(7, "Roses", "Roses.jpg", "07/04/2023"));
    _list.add(Plante(8, "Hortensia", "Hortensia.jpg", "07/04/2023"));
    _list.add(Plante(9, "Menthe", "Menthe.jpg", "07/04/2023"));

    return _list;
  }
}