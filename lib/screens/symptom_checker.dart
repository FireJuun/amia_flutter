import 'package:flutter/material.dart';

class Symptom {
  bool isChecked;
  String name;
  symptomId id;

  Symptom({this.isChecked = false, @required this.name, @required this.id});
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
    Symptom(name: 'Cough', id: symptomId.cough),
    Symptom(name: 'Fever', id: symptomId.fever),
    Symptom(name: 'SOB', id: symptomId.sob),
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
    // return Center(child: Text(item.name));
    return Card(
      // margin: EdgeInsets.all(8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      color: Colors.grey[300],
      child: Center(
        child: ListTile(
          contentPadding: EdgeInsets.all(4.0),
          selected: item.isChecked,
          onTap: () => _toggleSelected(item, !item.isChecked),
          leading: Icon(Icons.sim_card),
          title: Text(
            item.name,
            style: TextStyle(fontSize: 18),
          ),
          trailing: Checkbox(
            value: item.isChecked,
            onChanged: (bool value) => _toggleSelected(item, value),
          ),
        ),
      ),
    );
  }

  void _toggleSelected(Symptom item, bool value) => setState(() => item.isChecked = value);
}
