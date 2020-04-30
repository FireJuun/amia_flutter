import 'package:amia_flutter/symptomChecker.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(body1: TextStyle(fontSize: 36)),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello World'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          HelloFromFirebase(),
          Material(
            elevation: 5.0,
            borderRadius: BorderRadius.circular(30.0),
            color: Color(0xFF1A237E),
            child: MaterialButton(
              minWidth: MediaQuery.of(context).size.width / 2,
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SymptomChecker()));
              },
              child: Text("Let's Check Those Symptoms",
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}

class HelloFromFirebase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      // Get document snapshot as a stream
      stream: Firestore.instance
          .collection('collection')
          .document('document')
          .snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Text('No data');
        }
        // find the field named 'field', return this
        Map<String, dynamic> documentFields = snapshot.data.data;
        return Text(documentFields['field']);
      },
    );
  }
}
