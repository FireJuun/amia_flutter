import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'symptom.model.dart';

class SymptomService extends GetController {
  static SymptomService get to => Get.find();

  List<Symptom> _symptomList = [
    Symptom(
      name: 'Cough',
      id: symptomId.cough,
      image: Image.asset('assets/icons/cough.png'),
    ),
    Symptom(
      name: 'Short of Breath',
      id: symptomId.sob,
      image: Image.asset('assets/icons/SOB.png'),
    ),
    Symptom(
      name: 'Headache',
      id: symptomId.headache,
      image: Image.asset('assets/icons/headache.png'),
    ),
    Symptom(
      name: 'Feeling Ill',
      id: symptomId.feelingIll,
      image: Image.asset('assets/icons/feeling_ill.png'),
    ),
    Symptom(
      name: 'Body Aches',
      id: symptomId.bodyAches,
      image: Image.asset('assets/icons/body_aches.png'),
    ),
    Symptom(
      name: 'Weird/No Taste',
      id: symptomId.taste,
      image: Image.asset('assets/icons/taste.png'),
    ),
    Symptom(
      name: 'Weird/No Smell',
      id: symptomId.smell,
      image: Image.asset('assets/icons/smell.png'),
    ),
    Symptom(
      name: 'Vomiting',
      id: symptomId.vomiting,
      image: Image.asset('assets/icons/vomiting.png'),
    ),
    Symptom(
      name: 'Diarrhea',
      id: symptomId.diarrhea,
      image: Image.asset('assets/icons/diarrhea.png'),
    ),
    Symptom(
      name: 'Sneezing',
      id: symptomId.sneezing,
      image: Image.asset('assets/icons/sneezing.png'),
    ),
    Symptom(
      name: 'Runny Nose',
      id: symptomId.runnyNose,
      image: Image.asset('assets/icons/runny_nose.png'),
    ),
    Symptom(
      name: 'Sore Throat',
      id: symptomId.soreThroat,
      image: Image.asset('assets/icons/sore_throat.png'),
    ),
  ];

  List<Symptom> get symptomList => _symptomList;

  void toggleSelected(Symptom item, bool value) {
    item.isChecked = !item.isChecked;
    update(this);
  }
}
