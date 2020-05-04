import 'package:amia_flutter/screens/screens.dart';
import 'package:amia_flutter/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(title: 'AMIA Demo'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            _actionButton(
              title: 'Dashboard',
              onPressed: () => Get.to(DashboardScreen()),
            ),
            _actionButton(
              title: "Check-In",
              onPressed: () => Get.to(CheckinScreen()),
            ),
          ],
        ),
      ),
    );
  }

  _actionButton({String title, void onPressed()}) {
    return ButtonTheme.fromButtonThemeData(
      data: Get.theme.buttonTheme.copyWith(
        minWidth: Get.width / 2,
      ),
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        elevation: 5.0,
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
        onPressed: onPressed,
        child: Text(title),
      ),
    );
  }
}
