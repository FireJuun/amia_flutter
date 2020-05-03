import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SharedAppBar extends AppBar {
  SharedAppBar({String title, List<Widget> actions, Widget leading})
      : super(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            elevation: 0,
            title: title != null ? Text(title, style: Get.theme.textTheme.subhead) : null,
            actions: actions,
            leading: leading);
}
