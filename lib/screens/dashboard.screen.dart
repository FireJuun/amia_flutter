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
      // padding: EdgeInsets.symmetric(vertical: 12.0),

      children: <Widget>[
        _listItem(title: 'Check-in', subtitle: 'subtitle'),
        _listItem(title: 'History', subtitle: 'subtitle'),
        _listItem(title: 'Check my vital circles', subtitle: 'subtitle'),
        _listItem(title: 'Resources', subtitle: 'subtitle'),
      ],
    );
  }

  Widget _listItem({@required String title, @required String subtitle}) {
    final _textTheme = Get.theme.textTheme;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      decoration:
          BoxDecoration(border: Border.all(color: Get.theme.disabledColor), borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        leading: Icon(Icons.check_circle_outline),
        title: Text(title, style: _textTheme.title),
        subtitle: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(subtitle, style: _textTheme.subtitle),
        ),
      ),
    );
  }
}
