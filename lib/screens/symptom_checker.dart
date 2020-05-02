import 'package:flutter/material.dart';

class SymptomChecker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _SymptomChecker(),
    );
  }
}

class _SymptomChecker extends StatefulWidget {
  @override
  _SymptomCheckerState createState() => _SymptomCheckerState();
}

class _SymptomCheckerState extends State<_SymptomChecker> {
  List<Symptom> _symptomList = [
    Symptom(name: 'Cough', id: symptomId.cough),
    Symptom(name: 'Fever', id: symptomId.fever),
    Symptom(name: 'SOB', id: symptomId.sob),
    Symptom(name: 'Chills', id: symptomId.chills),
    Symptom(name: 'Headaches', id: symptomId.headaches),
    Symptom(name: 'Lost Taste', id: symptomId.lostTaste),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Please Enter Your Symptoms'),
        ),
        //Containers are kind of like div in html
        //but can only contain one child widget
        body: SafeArea(
          child: Container(
            alignment: Alignment.center,
            // color: Colors.white,
            child: Wrap(
              spacing: 16.0,
              children: <Widget>[
                ..._symptomList.map((item) => _buildCheckbox(item)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildCheckbox(Symptom symptom) {
    return Container(
      color: Colors.black12,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Checkbox(value: symptom.isChecked, onChanged: (bool value) => setState(() => symptom.isChecked = value)),
          Text(symptom.name),
        ],
      ),
    );
  }
}

class Symptom {
  bool isChecked;
  String name;
  symptomId id;

  Symptom({this.isChecked = false, @required this.name, @required this.id});
}

enum symptomId { cough, fever, sob, chills, headaches, lostTaste }
