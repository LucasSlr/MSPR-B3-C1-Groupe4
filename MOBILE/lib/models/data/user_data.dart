import 'package:msprapp/models/plante.dart';
import 'package:msprapp/models/specialite.dart';
import 'package:msprapp/models/users.dart';

class UserData {

  static List<Users> buildList() {

    List<Plante> plante = [];
    List<Plante> planteNull = [];

    List<Specialite> spe = [];

    plante.add(Plante(1, "Pissenlit", "Pissenlit.png", "07/04/2023"));
    plante.add(Plante(2, "Fougère", "Fougère.png", "07/04/2023"));
    plante.add(Plante(3, "Orchidée", "Orchidée.png", "07/04/2023"));
    plante.add(Plante(4, "Tulipes", "Tulipes.png", "07/04/2023"));

    List<Users> _list = [];

    _list.add(Users(1, "test1", "test1", "test1.Test", "test", 'Montpellier', 'Route de Ganges', 'Bat 4 étage 4',plante,spe));
    _list.add(Users(2, "test2", "test2", "test2.Test", "test", 'Montpellier', 'Route de Ganges', 'Bat 4 étage 4',planteNull,spe));
    _list.add(Users(3, "test3", "test3", "test3.Test", "test", 'Montpellier', 'Route de Ganges', 'Bat 4 étage 4',planteNull,spe));
    _list.add(Users(4, "test4", "test4", "test4.Test", "test", 'Montpellier', 'Route de Ganges', 'Bat 4 étage 4',planteNull,spe));
    _list.add(Users(5, "test5", "test5", "test5.Test", "test", 'Montpellier', 'Route de Ganges', 'Bat 4 étage 4',plante,spe));

    return _list;
  }

}