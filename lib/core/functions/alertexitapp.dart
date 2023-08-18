import 'dart:io';
import 'dart:async';

import 'package:exfai/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// ... other imports ...

extension ExtensionSnackbar on GetInterface {
  Future<bool> alertExitApp() {
    Completer<bool> completer = Completer<bool>();

    showDialog(
      context: Get.overlayContext!,
      builder: (context) {
        return AlertDialog(
          title: Text("warning".tr),
          titleTextStyle: const TextStyle(
            color: AppColor.primaryText,
            fontWeight: FontWeight.bold,
          ),
          content: Text("doYouWantToExitTheApp".tr),
          actions: [
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(AppColor.secondaryButton),
              ),
              onPressed: () {
                exit(0);
              },
              child: Text("confirmation".tr),
            ),
            ElevatedButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(AppColor.secondaryButton),
              ),
              onPressed: () {
                Get.back();
                completer.complete(false);
              },
              child: Text("cancellation".tr),
            ),
          ],
        );
      },
    );

    return completer.future;
  }
}
