import 'package:amia_flutter/shared/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(
        title: 'Dashboard',
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.business,
              // Default is 24, otherwise IconButtons need to be set manually
              size: Get.theme.iconTheme.size,
            ),
            onPressed: () => Get.back(),
          )
        ],
      ),
      body: Center(child: Text('Dashboard')),
    );
  }
}
