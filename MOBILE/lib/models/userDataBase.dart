import 'package:flutter/cupertino.dart';
import 'package:msprapp/models/plante.dart';
import 'package:msprapp/models/specialite.dart';
import 'package:msprapp/models/users.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class UserDataBase {
  static List<Plante>? defaultPlantePlante;
  static List<Specialite>? defaultSpecialite;

  UserDataBase._();

  static final UserDataBase instance = UserDataBase._();
  static late Database _database;

  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await initDB();
    return _database;
  }
  
  initDB() async {
    WidgetsFlutterBinding.ensureInitialized();
    return await openDatabase(
      join(await getDatabasesPath(), 'user_database.db'),
      onCreate: (db,version) {
        return db.execute(
            "Create Table Users (id INTEGER PRIMARY KEY, nom TEXT, prenom TEXT, login TEXT, mdp TEXT)"
        );
      },
      version: 1,
    );
  }

  void insertUser(Users users) async {
    final Database db = await database;

    await db.insert('Users', users.toMap(),conflictAlgorithm: ConflictAlgorithm.replace,);
  }


  void updateUser(Users users) async {
    final Database db = await database;

    await db.update('Users', users.toMap(),where: "id = ?", whereArgs: [users.id],);
  }

  void deleteUser(Users users) async {
    final Database db = await database;

    await db.delete('Users',where: "id = ?", whereArgs: [users.id],);
  }

  Future<List<Users>> users() async {
    final Database db = await database;
    final List<Map<String, dynamic>> maps = await db.query('Users');
    List<Users> users = List.generate(maps.length, (index) {
      return Users.fromMap(maps[index]);
    });
    if(users.isEmpty){
      for (Users users in defaultUser){
        insertUser(users);
      }
      users = defaultUser;
    }
    return users;
  }

  final List<Plante> defaultPlante = [
    Plante(1, "Pissenlit", "Pissenlit.png", "07/04/2023")
  ];

  final List<Specialite> defaultSpe = [];
  
  final List<Users> defaultUser = [
    
    Users(1, 'Test', 'test', 'test.Test', 'test', 'Montpellier', 'Route de Ganges', 'Bat 4 étage 4', defaultPlantePlante,defaultSpecialite)
  ];



}