import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckinScreen extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Check-in', style: Get.theme.textTheme.subhead),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
      ),
      //Containers are kind of like div in html
      //but can only contain one child widget
      body: Center(child: Text('Check-in')),
    );
  }
}
