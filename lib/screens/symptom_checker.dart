import 'package:flutter/material.dart';

class Symptom {
  bool isChecked;
  String name;
  IconData icon;
  symptomId id;

  Symptom({this.isChecked = false, this.icon = Icons.question_answer, @required this.name, @required this.id});
}

enum symptomId { cough, fever, vomiting, sob, chills, headaches, lostTaste }

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
    Symptom(name: 'Cough', id: symptomId.cough, icon: Icons.ac_unit),
    Symptom(name: 'Fever', id: symptomId.fever, icon: Icons.accessibility),
    Symptom(name: 'SOB', id: symptomId.sob, icon: Icons.queue),
    Symptom(name: 'Vomiting', id: symptomId.vomiting),
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
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 48,
              ),
              Text(
                'Pick your symptoms',
                style: TextStyle(fontSize: 32),
              ),
              SizedBox(
                height: 24,
              ),
              Expanded(
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 2),
                  children: <Widget>[..._symptomList.map((item) => _buildCheckbox(item))],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCheckbox(Symptom item) {
    return GestureDetector(
      onTap: () => _toggleSelected(item, !item.isChecked),
      child: Container(
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.only(left: 8),
        decoration: BoxDecoration(border: Border.all(color: Colors.grey), borderRadius: BorderRadius.circular(16)),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Icon(
              item.icon,
              color: (item.isChecked) ? Colors.blue : null,
            ),
            Text(
              item.name,
              style: TextStyle(fontSize: 18, color: (item.isChecked) ? Colors.blue : null),
            ),
            Checkbox(
              value: item.isChecked,
              onChanged: (bool value) => _toggleSelected(item, value),
            ),
          ],
        ),
      ),
    );
  }

  void _toggleSelected(Symptom item, bool value) => setState(() => item.isChecked = value);
}
