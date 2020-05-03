import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SharedActionButton extends StatelessWidget {
  const SharedActionButton({Key key, @required this.title, @required this.whenPressed}) : super(key: key);

  final String title;
  final void Function() whenPressed;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme.fromButtonThemeData(
      data: Get.theme.buttonTheme.copyWith(
        minWidth: Get.width / 2,
      ),
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        elevation: 5.0,
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 32),
        onPressed: whenPressed,
        child: Text(title),
      ),
    );
  }
}
