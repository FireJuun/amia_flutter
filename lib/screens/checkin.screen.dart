import 'package:amia_flutter/screens/screens.dart';
import 'package:amia_flutter/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckinScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(
        title: 'Check-in',
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.close,
                size: Get.theme.iconTheme.size,
              ),
              onPressed: () => Get.offAll(HomeScreen()))
        ],
      ),
      //Containers are kind of like div in html
      //but can only contain one child widget
      body: Center(child: Text('Check-in')),
    );
  }
}
