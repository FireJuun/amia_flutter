import 'package:amia_flutter/theme.dart';
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
      theme: appTheme(),
      home: HomeScreen(),
    );
  }
}
