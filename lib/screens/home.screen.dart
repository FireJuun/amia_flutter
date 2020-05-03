import 'package:amia_flutter/screens/screens.dart';
import 'package:amia_flutter/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(
        title: 'Hello World!',
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SharedFirebaseHello(),
            SharedActionButton(title: 'OK', whenPressed: () {}),
            SharedActionButton(
              title: "Let's Check Those Symptoms",
              whenPressed: () => Get.to(CheckinScreen()),
            ),
          ],
        ),
      ),
    );
  }
}
