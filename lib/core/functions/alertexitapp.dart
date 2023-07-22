import 'dart:io';

import '../../all_export.dart';

Future<bool> alertExitApp() {
  Get.defaultDialog(
      title: "warning".tr,
      titleStyle: const TextStyle(
          color: AppColor.primaryColor, fontWeight: FontWeight.bold),
      middleText: "doYouWantToExitTheApp".tr,
      actions: [
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(AppColor.primaryColor)),
            onPressed: () {
              exit(0);
            },
            child: Text("confirmation".tr)),
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(AppColor.primaryColor)),
            onPressed: () {
              Get.back();
            },
            child: Text("cancellation".tr))
      ]);
  return Future.value(true);
}
