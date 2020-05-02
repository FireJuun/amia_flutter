import 'package:flutter/material.dart';

class Symptom {
  bool isChecked;
  String name;
  Image image;
  symptomId id;

  Symptom({this.isChecked = false, @required this.image, @required this.name, @required this.id});
}

enum symptomId {
  bodyAches,
  cough,
  diarrhea,
  feelingIll,
  headache,
  runnyNose,
  smell,
  sneezing,
  sob,
  soreThroat,
  taste,
  vomiting
}

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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Check-in'),
        ),
        //Containers are kind of like div in html
        //but can only contain one child widget
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 48,
                ),
                Text(
                  'Please select your symptoms',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800),
                ),
                SizedBox(height: 8),
                Text(
                  'Yesterday, you had cough, short of breath, and body aches.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
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
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ImageIcon(
              item.image.image,
              color: (item.isChecked) ? Colors.blue : null,
            ),
            Expanded(
              child: Text(
                item.name,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: (item.isChecked) ? Colors.blue : null),
              ),
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
