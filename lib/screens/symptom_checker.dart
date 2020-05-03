import 'package:amia_flutter/services/services.dart';
import 'package:amia_flutter/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SymptomChecker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(title: 'Check-in'),
      //Containers are kind of like div in html
      //but can only contain one child widget
      body: GetBuilder<DataService>(
        // Required call ONLY ONCE, with get
        init: DataService(),
        builder: (data) => SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                SizedBox(height: 48),
                _buildHeader(),
                SizedBox(height: 24),
                _buildSymptomCheckboxes(data),
                SizedBox(height: 24),
                _buildSubmitButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: <Widget>[
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
        )
      ],
    );
  }

  Widget _buildSymptomCheckboxes(DataService data) {
    return Expanded(
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 2),
        children: <Widget>[...data.symptomList.map((item) => SharedCheckbox(item: item))],
      ),
    );
  }

  Widget _buildSubmitButton() {
    return SharedActionButton(
      title: 'Submit',
      whenPressed: () {
        Get.snackbar('Check-in complete', 'Be sure to check-in tomorrow as well!');
        Get.back();
      },
    );
  }
}
