import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';

import 'symptom.model.dart';

class SymptomService extends GetController {
  static SymptomService get to => Get.find();

  List<Symptom> _symptomList = [
    Symptom(
      name: 'Cough',
      icon: FlutterIcons.face_mco,
    ),
    Symptom(
      name: 'Short of Breath',
      icon: FlutterIcons.ambulance_faw,
    ),
    Symptom(
      name: 'Feeling Ill',
      icon: FlutterIcons.thermometer_faw,
    ),
    Symptom(
      name: 'Headache',
      icon: FlutterIcons.keybase_faw5d,
    ),
    Symptom(
      name: 'Body Aches',
      icon: FlutterIcons.md_body_ion,
    ),
    Symptom(
      name: 'Sore Throat',
      icon: FlutterIcons.pills_faw5s,
    ),
    Symptom(
      name: 'Weird/No Taste',
      icon: FlutterIcons.hamburger_faw5s,
    ),
    Symptom(
      name: 'Weird/No Smell',
      icon: FlutterIcons.flower_ent,
    ),
    Symptom(
      name: 'Vomiting',
      icon: FlutterIcons.food_off_mco,
    ),
    Symptom(
      name: 'Diarrhea',
      icon: FlutterIcons.emoticon_poop_mco,
    ),
    Symptom(
      name: 'Sneezing',
      icon: FlutterIcons.wind_fea,
    ),
    Symptom(
      name: 'Runny Nose',
      icon: FlutterIcons.run_fast_mco,
    ),
  ];

  List<Symptom> get symptomList => _symptomList;

  void toggleSelected(Symptom item, bool value) {
    item.isChecked = !item.isChecked;
    update(this);
  }
}
