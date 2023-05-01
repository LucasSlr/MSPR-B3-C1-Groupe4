import 'package:msprapp/models/type_users.dart';
import 'package:msprapp/models/users.dart';

class UserService {

  var _typeusers = [TypeUsers(1, "Client"),TypeUsers(2, "Botanniste")];

  var _users = List.generate(300, (index) {
    bool type = index%3==0;
    return Users(
        index,
        "Nom Utilisateur ${index}",
        "Prenom Utilisateur ${index}",
        "Login Utilisateur ${index}",
        "Mot de Passe Utilisateur ${index}",
        type ? TypeUsers(1, "Client") : TypeUsers(2, "Botanniste"));

  });



  List<TypeUsers> getTypeUsers() {
    return _typeusers;
  }
}