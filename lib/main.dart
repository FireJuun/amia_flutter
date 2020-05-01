import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(body1: TextStyle(fontSize: 36)),
      ),
      home: HomeScreen(),
    );
  }
}
