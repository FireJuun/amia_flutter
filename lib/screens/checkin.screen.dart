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
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              _buildHeader(),
              _buildSymptomCheckboxes(),
              _buildSubmitButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Text('Header goes here', style: Get.theme.textTheme.display1);
  }

  Widget _buildSymptomCheckboxes() {
    return Text('Symptoms go here');
  }

  Widget _buildSubmitButton() {
    return SharedActionButton(
      title: 'Submit',
      onPressed: () {
        Get.snackbar('Check-in complete', 'Be sure to check-in tomorrow as well!');
        Get.back();
      },
    );
  }
}
