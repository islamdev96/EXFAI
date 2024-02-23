import 'dart:io';
import 'package:exfai/all_export.dart';
import 'package:file_picker/file_picker.dart';
import 'package:image_picker/image_picker.dart';

Future<File?> imageUploadCamera() async {
  final XFile? file = await ImagePicker().pickImage(
    source: ImageSource.camera,
    imageQuality: 100,
  );
  if (file != null) {
    return File(file.path);
  } else {
    return null;
  }
}

Future<File?> fileUploadGallery() async {
  FilePickerResult? result = await FilePicker.platform.pickFiles(
    type: FileType.image,
  );
  if (result != null) {
    return File(result.files.single.path!);
  } else {
    return null;
  }
}

void showbottonmenu(
    Function() imageUploadCamera, Function() fileUploadGallery) {
  Get.bottomSheet(
    Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: const Text(
                "اختيار صورة",
                style: TextStyle(
                  fontSize: 22,
                  color: AppColor.primary,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              onTap: () async {
                File? files = await imageUploadCamera();
                if (files != null) {
                  Get.back();
                  // Do something with the selected camera image.
                }
              },
              leading: const Icon(
                Icons.camera_alt,
                size: 40,
              ),
              title: const Text(
                "صورة من الكاميرا",
                style: TextStyle(fontSize: 20),
              ),
            ),
            ListTile(
              onTap: () async {
                File? files = await fileUploadGallery();
                if (files != null) {
                  Get.back();
                  // Do something with the selected gallery image.
                }
              },
              leading: const Icon(
                Icons.image,
                size: 40,
              ),
              title: const Text(
                "صورة من الاستوديو",
                style: TextStyle(fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    ),
    backgroundColor: Colors.white,
  );
}
