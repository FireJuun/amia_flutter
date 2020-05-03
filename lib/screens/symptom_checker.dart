import 'package:amia_flutter/services/services.dart';
import 'package:amia_flutter/shared/shared.dart';
import 'package:amia_flutter/theme/theme.dart';
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
                    children: <Widget>[...data.symptomList.map((item) => _SymptomCheckbox(item: item))],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _SymptomCheckbox extends StatelessWidget {
  final Symptom item;

  const _SymptomCheckbox({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // DataService.to is how we call the service in different widgets
      onTap: () => DataService.to.toggleSelected(item, !item.isChecked),
      child: Container(
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.only(left: 8),
        decoration:
            BoxDecoration(border: Border.all(color: AppColors.disabled), borderRadius: BorderRadius.circular(16)),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ImageIcon(
              item.image.image,
              color: (item.isChecked) ? AppColors.primary : AppColors.disabled,
            ),
            Expanded(
              child: Text(
                item.name,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18, color: (item.isChecked) ? AppColors.primary : AppColors.disabled),
              ),
            ),
            Checkbox(
              value: item.isChecked,
              activeColor: AppColors.primary,
              onChanged: (bool value) => DataService.to.toggleSelected(item, value),
            ),
          ],
        ),
      ),
    );
  }
}
