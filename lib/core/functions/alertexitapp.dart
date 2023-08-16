import 'dart:io';

import '../../all_export.dart';

Future<bool> alertExitApp() {
  Get.defaultDialog(
      title: "warning".tr,
      titleStyle: const TextStyle(
          color: AppColor.primaryBackground, fontWeight: FontWeight.bold),
      middleText: "doYouWantToExitTheApp".tr,
      actions: [
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(AppColor.primaryBackground)),
            onPressed: () {
              exit(0);
            },
            child: Text("confirmation".tr)),
        ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(AppColor.primaryBackground)),
            onPressed: () {
              Get.back();
            },
            child: Text("cancellation".tr))
      ]);
  return Future.value(true);
}
