import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class SharedFirebaseHello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      // Get document snapshot as a stream
      stream: Firestore.instance.collection('collection').document('document').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Text('No data');
        }
        // find the field named 'field', return this
        Map<String, dynamic> documentFields = snapshot.data.data;
        return Text(documentFields['field'], textAlign: TextAlign.center);
      },
    );
  }
}
