import 'package:amia_flutter/screens/checkin.screen.dart';
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
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 28.0),
          child: Text('Good morning, AMIA', style: Get.theme.textTheme.headline, textAlign: TextAlign.center),
        ),
        _listItem(
            icon: Icons.check_circle_outline,
            title: 'Check-in',
            subtitle: 'Log your symptoms and temperature',
            isGrey: true,
            onPressed: () => Get.to(CheckinScreen())),
        _listItem(
          icon: Icons.calendar_today,
          title: 'History',
          subtitle: 'Look at your previous symptoms and edit records',
        ),
        _listItem(
          icon: Icons.people,
          title: 'Check my vital circles',
          subtitle: 'See how those around you are doing',
        ),
        _listItem(
          icon: Icons.info,
          title: 'Resources',
          subtitle: 'Helpful articles and tips',
        ),
      ],
    );
  }

  Widget _listItem(
      {@required IconData icon, @required String title, @required String subtitle, bool isGrey, void onPressed()}) {
    final _textTheme = Get.theme.textTheme;
    isGrey = isGrey ?? false;

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
      decoration:
          BoxDecoration(border: Border.all(color: Get.theme.disabledColor), borderRadius: BorderRadius.circular(16)),
      child: ListTile(
        leading: Icon(
          icon,
          size: 24,
          color: (isGrey) ? Get.theme.disabledColor : Get.theme.primaryColor,
        ),
        title: Text(title, style: _textTheme.title),
        subtitle: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(subtitle, style: _textTheme.subtitle),
        ),
        onTap: onPressed,
      ),
    );
  }
}
