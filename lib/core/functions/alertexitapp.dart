import 'dart:io';
import 'dart:async';

import 'package:exfai/all_export.dart';
import 'package:exfai/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

extension ExtensionSnackbar on GetInterface {
  Future<bool> alertExitApp() async {
    bool? result = await Get.dialog<bool>(
      AlertDialog(
        backgroundColor: AppColor.secondaryBackground,
        title: Text(
          "warning".tr,
          style: const TextStyle(
            color: AppColor.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        content: Text(
          "doYouWantToExitTheApp".tr,
          style: TextStyle(color: AppColor.white, fontSize: 16.sp),
        ),
        actions: [
          Row(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: () {
                  exit(0);
                },
                child: Text(
                  "confirmation".tr,
                  style: const TextStyle(
                    color: AppColor.black,
                  ),
                ),
              ),
              const SizedBox(width: 2.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: () {
                  Get.back(result: false);
                },
                child: Text(
                  "cancellation".tr,
                  style: const TextStyle(
                    color: AppColor.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );

    return result ?? false;
  }
}
