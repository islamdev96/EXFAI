import '../../all_export.dart';

String? validateInput(String val, int min, int max, String type) {
  if (type == "username") {
    // التحقق من أن الاسم لا يكون فارغًا
    if (val.isEmpty) {
      return "الرجاء إدخال اسم صالح";
    }
  }
  if (type == "email") {
    if (!GetUtils.isEmail(val)) {
      return "البريد الإلكتروني غير صالح";
    }
  }

  if (type == "phone") {
    if (!GetUtils.isPhoneNumber(val)) {
      return "رقم الهاتف غير صالح";
    }
  }

  if (val.isEmpty) {
    return "لا يمكن أن يكون فارغًا";
  }

  if (val.length < min) {
    return "لا يمكن أن يكون أقل من $min أحرف";
  }

  if (val.length > max) {
    return "لا يمكن أن يكون أكبر من $max أحرف";
  }

  return null; // إذا كان الإدخال صالحًا
}

String? validateInputOptional(String? val, int min, int max, String type) {
  // إذا كانت القيمة فارغة، فلا توجد حاجة لمزيد من التحقق
  if (val == null || val.isEmpty) {
    return null; // قبول القيمة الفارغة
  }
  return null;
}
