import 'dart:io';

import 'package:exfai/all_export.dart';

extension ExtensionSnackbar on GetInterface {
  Future<bool> alertExitApp() async {
    bool? result = await Get.dialog<bool>(
      AlertDialog(
        backgroundColor: AppColor.secondaryBackground,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        title: const Text(
          "تنبيه",
          style: TextStyle(
            color: AppColor.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        content: Text(
          "هل تريد الخروج من التطبيق؟",
          style: TextStyle(color: AppColor.white, fontSize: 16.sp),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: () {
                  exit(0);
                },
                child: const Text(
                  "تاكيد",
                  style: TextStyle(
                    color: AppColor.white,
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      AppColor.white, // Use backgroundColor instead of primary
                  side: const BorderSide(),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                onPressed: () {
                  Get.back(result: false);
                },
                child: const Text(
                  "الغاء",
                  style: TextStyle(
                    color: AppColor.black,
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
