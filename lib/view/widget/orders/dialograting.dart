// ignore_for_file: avoid_print

import 'package:exfai/all_export.dart';
import 'package:rating_dialog/rating_dialog.dart';

// show the dialog
void showDialogRating(BuildContext context, String ordersid) {
  showDialog(
    context: context,
    barrierDismissible: true, // set to false if you want to force a rating
    builder: (context) => RatingDialog(
      initialRating: 1.0,
      // your app's name?
      title: Text(
        'ratingDialog'.tr,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: AppColor.fontsColors,
          fontSize: 25,
          fontWeight: FontWeight.bold,
        ),
      ),
      // encourage your user to leave a high rating?
      message: Text(
        'tapAStar'.tr,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 15),
      ),
      // your app's logo?
      image: Image.asset(
        AppImageAsset.logo,
        width: 200,
        height: 200,
      ),
      submitButtonText: 'submit'.tr,
      submitButtonTextStyle: const TextStyle(
          color: AppColor.fontsColors, fontWeight: FontWeight.bold),
      commentHint: 'setYourCustomCommentHint'.tr,
      onCancelled: () => print('cancelled'.tr),
      onSubmitted: (response) {
        OrdersArchiveController controller = Get.find();
        // print('rating: ${response.rating}, comment: ${response.comment}');
        controller.submitRating(ordersid, response.rating, response.comment);
      },
    ),
  );
}
