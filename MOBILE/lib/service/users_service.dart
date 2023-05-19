import 'package:msprapp/models/type_users.dart';
import 'package:msprapp/models/data/user_data.dart';
import 'package:msprapp/models/users.dart';

import '../models/plante.dart';

class UserService {

  // var _typeusers = [TypeUsers(1, "Client"),TypeUsers(2, "Botanniste")];

  // var _users = List.generate(31, (index) {
  //   bool type = index%3==0;
  //   return Users(
  //       index,
  //       "Nom Utilisateur ${index}",
  //       "Prenom Utilisateur ${index}",
  //       "Login Utilisateur ${index}",
  //       "Mot de Passe Utilisateur ${index}",
  //       type ? TypeUsers(1, "Client") : TypeUsers(2, "Botanniste"));
  //
  // });

  // List<TypeUsers> getTypeUsers() {
  //   return _typeusers;
  // }

  var _utilisateur;

  UserService() {
    _utilisateur = UserData.buildList();
  }

  List<Users> getAllUsers() {
    return _utilisateur;
  }

  Users getUser() {
    return _utilisateur;
  }

  Users getUserById(id) {
    return _utilisateur[id];
  }

}