import 'package:flutter/material.dart';
import 'package:msprapp/view/homepage.dart';
import 'package:msprapp/view/login.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      home: LoginScreen(),
    );
  }
}
