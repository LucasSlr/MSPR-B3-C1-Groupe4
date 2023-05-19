import 'package:flutter/material.dart';
import 'package:msprapp/view/homepage.dart';
import 'package:msprapp/view/login.dart';
import 'package:intl/intl.dart';
import 'package:msprapp/view/testview.dart';
import 'configs/image_picker_configs.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({final Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final configs = ImagePickerConfigs();
    configs.translateFunc = (name, value) => Intl.message(value, name: name);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      home: LoginScreen(),
      // home: TestView(),
    );
  }
}
