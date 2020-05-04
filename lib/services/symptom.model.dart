import 'package:flutter/material.dart';

class Symptom {
  bool isChecked;
  String name;
  IconData icon;

  Symptom({this.isChecked = false, @required this.icon, @required this.name});
}
