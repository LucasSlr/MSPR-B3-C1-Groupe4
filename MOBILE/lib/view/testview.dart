import 'package:flutter/material.dart';
import 'package:msprapp/models/users.dart';
import 'package:msprapp/service/users_service.dart';

class TestView extends StatelessWidget {
  final UserService service = UserService();
  late List<Users> users;
   TestView({Key? key}) : super(key: key){ users = service.getAllUsers();}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: List.generate(
    users.length,
    (index) => _buildUser(users[index])),
        ),
      ),
    );
  }

  _buildUser(Users users){
     return Center(
       child: Text(users.nom),
     );
  }
}
