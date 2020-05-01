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
  var symptoms = Symptoms();

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
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text('cough'),
                        Checkbox(
                            value: symptoms.cough,
                            onChanged: (bool value) =>
                                setState(() => symptoms.cough = value))
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text('fever'),
                        Checkbox(
                            value: symptoms.fever,
                            onChanged: (bool value) =>
                                setState(() => symptoms.fever = value))
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text('Chills'),
                        Checkbox(
                            value: symptoms.chills,
                            onChanged: (bool value) =>
                                setState(() => symptoms.chills = value))
                      ],
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text('Shortness of Breath'),
                        Checkbox(
                            value: symptoms.sob,
                            onChanged: (bool value) =>
                                setState(() => symptoms.sob = value))
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text('Headaches'),
                        Checkbox(
                            value: symptoms.headaches,
                            onChanged: (bool value) =>
                                setState(() => symptoms.headaches = value))
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text('Loss of Taste or Smell'),
                        Checkbox(
                            value: symptoms.lostTaste,
                            onChanged: (bool value) =>
                                setState(() => symptoms.lostTaste = value))
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Symptoms {
  bool cough;
  bool fever;
  bool sob;
  bool chills;
  bool headaches;
  bool lostTaste;

  Symptoms({
    this.cough = false,
    this.fever = false,
    this.sob = false,
    this.chills = false,
    this.headaches = false,
    this.lostTaste = false,
  });
}
