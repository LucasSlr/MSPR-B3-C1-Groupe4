import 'package:flutter/rendering.dart';
import 'package:msprapp/models/data/user_data.dart';
import 'package:msprapp/models/users.dart';

import '../models/plante.dart';
import '../models/specialite.dart';
import '../models/users.dart';

class UserService {

  var _utilisateur;
  final List<Users> listUser = UserData.buildList();

  UserService() {
    _utilisateur = UserData.buildList();
  }

  List<Users> getAllUsers() {
    return _utilisateur;
  }

  Users getUser() {
    return _utilisateur;
  }

  Users getUserById(int id) {
    return _utilisateur[id];
  }

  int CountUser() {
    return listUser.length;
  }

  getUserByName(String login) {
    final Users ?isUser = listUser.firstWhere((Users) => Users.login == login);
    return isUser;
  }
}