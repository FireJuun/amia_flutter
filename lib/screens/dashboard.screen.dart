import 'package:amia_flutter/shared/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  Widget _buildAppBar() {
    return SharedAppBar(
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
    );
  }

  Widget _buildBody() {
    return ListView(
      children: <Widget>[
        Text('Good morning, AMIA', style: Get.theme.textTheme.display2, textAlign: TextAlign.center),
        Text('Check-in'),
        Text('History'),
        Text('Contact tracing'),
        Text('Info'),
        ListTile(
          leading: Text('leading'),
          title: Text('ListTile'),
          subtitle: Text('Subtitle'),
          trailing: Text('trailing'),
        ),
      ],
    );
  }
}
