import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';

import 'symptom.model.dart';

class SymptomService extends GetController {
  static SymptomService get to => Get.find();

  List<Symptom> _symptomList = [
    Symptom(
      name: 'Cough',
      id: symptomId.cough,
      icon: FlutterIcons.face_mco,
    ),
    Symptom(
      name: 'Short of Breath',
      id: symptomId.sob,
      icon: FlutterIcons.ambulance_faw,
    ),
    Symptom(
      name: 'Feeling Ill',
      id: symptomId.feelingIll,
      icon: FlutterIcons.thermometer_faw,
    ),
    Symptom(
      name: 'Headache',
      id: symptomId.headache,
      icon: FlutterIcons.keybase_faw5d,
    ),
    Symptom(
      name: 'Body Aches',
      id: symptomId.bodyAches,
      icon: FlutterIcons.md_body_ion,
    ),
    Symptom(
      name: 'Sore Throat',
      id: symptomId.soreThroat,
      icon: FlutterIcons.pills_faw5s,
    ),
    Symptom(
      name: 'Weird/No Taste',
      id: symptomId.taste,
      icon: FlutterIcons.hamburger_faw5s,
    ),
    Symptom(
      name: 'Weird/No Smell',
      id: symptomId.smell,
      icon: FlutterIcons.flower_ent,
    ),
    Symptom(
      name: 'Vomiting',
      id: symptomId.vomiting,
      icon: FlutterIcons.food_off_mco,
    ),
    Symptom(
      name: 'Diarrhea',
      id: symptomId.diarrhea,
      icon: FlutterIcons.emoticon_poop_mco,
    ),
    Symptom(
      name: 'Sneezing',
      id: symptomId.sneezing,
      icon: FlutterIcons.wind_fea,
    ),
    Symptom(
      name: 'Runny Nose',
      id: symptomId.runnyNose,
      icon: FlutterIcons.run_fast_mco,
    ),
  ];

  List<Symptom> get symptomList => _symptomList;

  void toggleSelected(Symptom item, bool value) {
    item.isChecked = !item.isChecked;
    update(this);
  }
}
