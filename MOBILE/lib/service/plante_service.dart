import 'package:msprapp/models/data/plante_data.dart';
import 'package:msprapp/models/users.dart';

import '../models/plante.dart';

class PlanteService {

  var _plante;
  var _user;

  PlanteService() {
    _plante = PlanteData.buildList();
  }

  List<Plante> getAllPlante(){
    return _plante;
  }

  Plante getPlanteById(id) {
    return _plante[id];
  }

  List<Plante>? getPlantUser(Users users) {

    var les_plante = [];
    les_plante.add(users.plante);
    return users.plante;
  }
}