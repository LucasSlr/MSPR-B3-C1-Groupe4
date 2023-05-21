import 'package:msprapp/models/plante.dart';
import 'package:msprapp/models/specialite.dart';
import 'package:msprapp/models/type_users.dart';
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

    _list.add(Users(1, "test", "test", "test.test", "test",plante,spe));
    _list.add(Users(2, "test", "test", "test.test", "test",planteNull,spe));
    _list.add(Users(3, "test", "test", "test.test", "test",planteNull,spe));
    _list.add(Users(4, "test", "test", "test.test", "test",planteNull,spe));
    _list.add(Users(5, "test", "test", "test.test", "test",plante,spe));

    return _list;
  }

}