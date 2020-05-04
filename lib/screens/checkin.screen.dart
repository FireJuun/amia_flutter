import 'package:amia_flutter/screens/screens.dart';
import 'package:amia_flutter/services/services.dart';
import 'package:amia_flutter/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CheckinScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SharedAppBar(
        title: 'Check-in',
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.close,
                size: Get.theme.iconTheme.size,
              ),
              onPressed: () => Get.offAll(HomeScreen()))
        ],
      ),
      //Containers are kind of like div in html
      //but can only contain one child widget
      body: GetBuilder<SymptomService>(
        // Required call ONLY ONCE, with get
        init: SymptomService(),
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
    TextTheme _textTheme = Get.theme.textTheme;
    return Column(
      children: <Widget>[
        Text(
          'Please select your symptoms',
          textAlign: TextAlign.center,
          style: _textTheme.display1,
        ),
        SizedBox(height: 8),
        Text(
          'Yesterday, you had cough, short of breath, and body aches.',
          textAlign: TextAlign.center,
          style: _textTheme.headline,
        )
      ],
    );
  }

  Widget _buildSymptomCheckboxes(SymptomService data) {
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
      onPressed: () {
        Get.snackbar('Check-in complete', 'Be sure to check-in tomorrow as well!');
        Get.back();
      },
    );
  }
}
