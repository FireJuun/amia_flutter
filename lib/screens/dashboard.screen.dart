import 'package:amia_flutter/screens/checkin.screen.dart';
import 'package:amia_flutter/shared/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
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
          child: Text('Good morning, AMIA', style: Get.theme.textTheme.display2, textAlign: TextAlign.center),
        ),
        _listItem(
            icon: Icons.check_circle_outline,
            title: 'Check-in',
            subtitle: 'Enter your temperature, symptoms, and relevant tests',
            isGrey: true,
            onPressed: () => Get.to(CheckinScreen())),
        _listItem(
          icon: FlutterIcons.calendar_oct,
          title: 'History',
          subtitle: 'See/edit your past entries',
        ),
        _listItem(
          icon: FlutterIcons.map_clock_outline_mco,
          title: 'Contact tracing',
          subtitle: 'Toggle method:\nlocation / bluetooth / both / off',
        ),
        _listItem(
          icon: FlutterIcons.information_variant_mco,
          title: 'Info',
          subtitle: 'Learn more about COVID-19',
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
      decoration: BoxDecoration(
          border: Border.all(color: Get.theme.unselectedWidgetColor), borderRadius: BorderRadius.circular(16)),
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
