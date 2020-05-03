import 'package:amia_flutter/theme/theme.dart';
import 'package:flutter/material.dart';

class SharedAppBar extends AppBar {
  SharedAppBar({String title, List<Widget> actions, Widget leading})
      : super(
            backgroundColor: Colors.transparent,
            centerTitle: true,
            elevation: 0,
            title: title != null ? Text(title, style: AppTypography.h3) : null,
            actions: actions,
            leading: leading);
}
