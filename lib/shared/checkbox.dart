import 'package:amia_flutter/services/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SharedCheckbox extends StatelessWidget {
  final Symptom item;

  const SharedCheckbox({Key key, this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // DataService.to is how we call the service in different widgets
      onTap: () => DataService.to.toggleSelected(item, !item.isChecked),
      child: Container(
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.only(left: 8),
        decoration: BoxDecoration(
            border: Border.all(
              color: Get.theme.disabledColor,
            ),
            borderRadius: BorderRadius.circular(16)),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ImageIcon(
              item.image.image,
              color: (item.isChecked) ? Get.theme.primaryColor : Get.theme.disabledColor,
            ),
            Expanded(
              child: Text(
                item.name,
                textAlign: TextAlign.center,
                style: Get.theme.textTheme.subtitle
                    .apply(color: (item.isChecked) ? Get.theme.primaryColor : Get.theme.disabledColor),
              ),
            ),
            Checkbox(
              value: item.isChecked,
              activeColor: Get.theme.primaryColor,
              onChanged: (bool value) => DataService.to.toggleSelected(item, value),
            ),
          ],
        ),
      ),
    );
  }
}
