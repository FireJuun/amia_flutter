import 'package:amia_flutter/screens/screens.dart';
import 'package:amia_flutter/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:get/get.dart';

class CheckinScreen extends StatefulWidget {
  @override
  _CheckinScreenState createState() => _CheckinScreenState();
}

class _CheckinScreenState extends State<CheckinScreen> {
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 48),
              _buildHeader(),
              SizedBox(height: 24),
              _buildSymptomCheckboxes(),
              SizedBox(height: 24),
              _buildSubmitButton(),
            ],
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

  Widget _buildSymptomCheckboxes() {
    return Expanded(
      child: ListView(
        // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 2),
        children: <Widget>[..._symptomList.map((item) => _buildCheckbox(item: item))],
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

  // todo: extract into shared widget
  Widget _buildCheckbox({@required Symptom item}) {
    return GestureDetector(
      onTap: () => setState(() => toggleSelected(item, !item.isChecked)),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Icon(item.icon),
          Expanded(
            child: Text(item.name, textAlign: TextAlign.center, style: Get.theme.textTheme.subtitle),
          ),
          Checkbox(
            value: item.isChecked,
            activeColor: Get.theme.primaryColor,
            onChanged: (bool value) => setState(() => toggleSelected(item, value)),
          ),
        ],
      ),
    );
  }

  // todo: extract into service
  // ! Current management requires stateful widget

  List<Symptom> _symptomList = [
    Symptom(name: 'Cough', icon: FlutterIcons.face_mco),
    Symptom(name: 'Cough', icon: FlutterIcons.face_mco),
    Symptom(name: 'Cough', icon: FlutterIcons.face_mco),
    Symptom(name: 'Cough', icon: FlutterIcons.face_mco),
  ];

  List<Symptom> get symptomList => _symptomList;

  void toggleSelected(Symptom item, bool value) {
    item.isChecked = !item.isChecked;
  }
}

class Symptom {
  bool isChecked;
  String name;
  IconData icon;

  Symptom({this.isChecked = false, @required this.icon, @required this.name});
}
