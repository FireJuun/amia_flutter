import 'package:amia_flutter/screens/screens.dart';
import 'package:amia_flutter/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(
        title: 'AMIA Demo',
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            SharedActionButton(
              title: 'Dashboard',
              whenPressed: () => Get.to(DashboardScreen()),
            ),
            SharedActionButton(
              title: "Check-In",
              whenPressed: () => Get.to(CheckinScreen()),
            ),
            SharedFirebaseHello(),
          ],
        ),
      ),
    );
  }
}
