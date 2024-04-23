// ignore_for_file: unused_local_variable

import '../../all_export.dart';

final FlutterRingtonePlayer _ringtonePlayer = FlutterRingtonePlayer();

requestPermissionNotification() async {
  NotificationSettings settings =
      await FirebaseMessaging.instance.requestPermission(
    alert: true,
    announcement: false,
    badge: true,
    carPlay: false,
    criticalAlert: false,
    provisional: false,
    sound: true,
  );
}

fcmConfig() {
  FirebaseMessaging.onMessage.listen((message) {
    _ringtonePlayer.playNotification();
    Get.snackbar(
      message.notification!.title!,
      message.notification!.body!,
    );
    refreshPageNotification(message.data);
  });
}

refreshPageNotification(data) {
  if (Get.currentRoute == "/orderspending" &&
      data['pagename'] == "refreshorderpending") {
    OrdersPendingController controller = Get.find();
    controller.refrehOrder();
  }
}

// Firebase + stream 
// Socket io 
// Notification refresh
