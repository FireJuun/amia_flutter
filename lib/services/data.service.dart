import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'data.model.dart';

class DataService extends GetController {
  static DataService get to => Get.find();

  List<Symptom> _symptomList = [
    Symptom(name: 'Body Aches', id: symptomId.cough, image: Image.asset('assets/icons/body_aches.png')),
    Symptom(name: 'Cough', id: symptomId.cough, image: Image.asset('assets/icons/cough.png')),
    Symptom(name: 'Diarrhea', id: symptomId.cough, image: Image.asset('assets/icons/diarrhea.png')),
    Symptom(name: 'Feeling Ill', id: symptomId.cough, image: Image.asset('assets/icons/feeling_ill.png')),
    Symptom(name: 'Headache', id: symptomId.cough, image: Image.asset('assets/icons/headache.png')),
    Symptom(name: 'Runny Nose', id: symptomId.cough, image: Image.asset('assets/icons/runny_nose.png')),
    Symptom(name: 'Weird/No Smell', id: symptomId.cough, image: Image.asset('assets/icons/smell.png')),
    Symptom(name: 'Sneezing', id: symptomId.cough, image: Image.asset('assets/icons/sneezing.png')),
    Symptom(name: 'Short of Breath', id: symptomId.cough, image: Image.asset('assets/icons/SOB.png')),
    Symptom(name: 'Sore Throat', id: symptomId.cough, image: Image.asset('assets/icons/sore_throat.png')),
    Symptom(name: 'Weird/No Taste', id: symptomId.cough, image: Image.asset('assets/icons/taste.png')),
    Symptom(name: 'Vomiting', id: symptomId.cough, image: Image.asset('assets/icons/vomiting.png')),
  ];

  List<Symptom> get symptomList => _symptomList;

  void toggleSelected(Symptom item, bool value) {
    item.isChecked = !item.isChecked;
    update(this);
  }
}
