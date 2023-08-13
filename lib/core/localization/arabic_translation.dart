import '../../../all_export.dart';

class ArabicTranslation extends MyTranslation {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          //========================== Checkout ============================//

          //========================== Alert ============================//
          "warning": "تحذير",
          "doYouWantToExitTheApp": "هل تريد الخروج من التطبيق؟",
          "confirmation": "تأكيد",
          "cancellation": "إلغاء",

          //========================== Application ============================//

          "alert": "تنبيه",
          "attentionPleaseTurnOnTheLocationService": "يرجى تفعيل خدمة الموقع",
          "pleaseGiveTheSitePermissionForTheApplication":
              "يرجى منح إذن الموقع للتطبيق",
          "theApplicationCannotBeUsedWithoutSpecifyingYourLocation":
              "لا يمكن استخدام التطبيق دون تحديد الموقع الخاص بك",

          //========================== onBoardingList ============================//

          "chooseProduct": "اختر المنتج",
          "weHavea100kProduct":
              "لدينا 100 ألف منتج، اختر منتجك من متجر التجارة الإلكترونية لدينا",
          "easyAndSafe": "دفع سهل وآمن",
          "youCanPay": "يمكنك الدفع نقدًا أو من خلال بوابات الدفع",
          "trackYourOrder": "تتبع طلبك",
          "theOrderCanBeTracked": "يمكن تتبع الطلب في كل مرحلة حتى يصل إليك",
          "welcomeBack": "مرحبًا مجددًا",
          "continue": "متابعة",

          //========================== auth ============================//

          "resendVerfiyCode": "إعادة إرسال رمز التحقق",
          "ReciveAVerificationCode":
              "الرجاء إدخال عنوان البريد الإلكتروني الخاص بك لاستقبال رمز التحقق",

          "skip": "تخطي",
          "login": "تسجيل الدخول",
          "signUp": "التسجيل",
          "signIn": "تسجيل الدخول",
          "notAValidEmail": "البريد الإلكتروني غير صالح",
          "notAValidPhoneNumber": "رقم الهاتف غير صالح",
          "notAValidPassword": "كلمة المرور غير صالحة",
          "passwordMustBeAtLeast8Characters":
              "يجب أن تحتوي كلمة المرور على 8 أحرف على الأقل",
          "phoneNumberOrEmailAlreadyExists":
              "رقم الهاتف أو البريد الإلكتروني موجود بالفعل",
          "cannotBeEmpty": "لا يمكن أن يكون فارغًا",
          "CannotBeLessThan": "لا يمكن أن يكون أقل من",
          "cannotBeLargerThan": "لا يمكن أن يكون أكبر من",
          "notAValidUsername": "اسم المستخدم غير صالح",
          "notAValidCode": "رمز غير صالح",
          "notAValidNewPassword": "كلمة المرور الجديدة غير صالحة",
          "notAValidConfirmPassword": "تأكيد كلمة المرور غير صالح",
          "notAValidOldPassword": "كلمة المرور القديمة غير صالحة",
          "notAValidAddress": "عنوان غير صالح",
          "notAValidCity": "مدينة غير صالحة",
          "notAValidCountry": "بلد غير صالح",
          "notAValidPostalCode": "رمز بريدي غير صالح",
          "notAValidName": "اسم غير صالح",
          "notAValidPhoneOrEmail": "رقم الهاتف أو البريد الإلكتروني غير صالح",
          "notAValidPhoneOrPassword": "رقم الهاتف أو كلمة المرور غير صالح",
          "notAValidPhoneOrUsername": "رقم الهاتف أو اسم المستخدم غير صالح",
          "notAValidEmailOrPassword":
              "البريد الإلكتروني أو كلمة المرور غير صالحة",
          "notAValidEmailOrUsername":
              "البريد الإلكتروني أو اسم المستخدم غير صالح",
          "notAValidEmailOrPhone": "البريد الإلكتروني أو رقم الهاتف غير صالح",
          "notAValidUsernameOrPassword":
              "اسم المستخدم أو كلمة المرور غير صالحة",
          "notAValidUsernameOrPhone": "اسم المستخدم أو رقم الهاتف غير صالح",

          "signInYourEmailAndPassword":
              "تسجيل الدخول باستخدام البريد الإلكتروني وكلمة المرور أو متابعة باستخدام وسائل التواصل الاجتماعي",
          "enterYourEmail": "أدخل البريد الإلكتروني",
          "enterYourPhone": "أدخل رقم الهاتف",
          "enterYourPassword": "أدخل كلمة المرور",
          "forgetPassword": "نسيت كلمة المرور",
          "dontHaveAnAccount": "ليس لديك حساب؟",
          "haveAnAccount": "هل لديك حساب؟",
          "signUpWithYourEmailAndPassword":
              "التسجيل باستخدام البريد الإلكتروني وكلمة المرور أو متابعة باستخدام وسائل التواصل الاجتماعي",
          "email": "البريد الإلكتروني",
          "password": "كلمة المرور",
          "username": "اسم المستخدم",
          "phone": "رقم الهاتف",
          "congratulations": "تهانينا",
          "enterYourUsername": "أدخل اسم المستخدم الخاص بك",
          "signUpEmailAndPassword":
              "التسجيل باستخدام البريد الإلكتروني وكلمة المرور أو متابعة باستخدام وسائل التواصل الاجتماعي",
          "checkEmail": "تحقق من البريد الإلكتروني",
          "verificationCode": "رمز التحقق",
          "checkCode": "تحقق من الرمز",
          "pleaseEnterTheDigitCodeSentTo": "يرجى إدخال رمز الأرقام المرسل إلى",
          "resendVerifyCode": "إعادة إرسال رمز التحقق",
          "enterYourVerificationCode": "أدخل رمز التحقق الخاص بك",
          "enterYourNewPassword": "أدخل كلمة المرور الجديدة الخاصة بك",
          "accountSuccessfullyCreated": "تم إنشاء الحساب بنجاح",
          "receiveAVerificationCode":
              "الرجاء إدخال عنوان البريد الإلكتروني الخاص بك لتلقي رمز التحقق",
          "check": "تحقق",
          "goToLogin": "الانتقال إلى تسجيل الدخول",
          "success": "نجاح",
          "save": "حفظ",
          "pleaseEnterNewPassword": "يرجى إدخال كلمة المرور الجديدة",
          "newPassword": "كلمة المرور الجديدة",
          "passwordResetSuccess": "تم إعادة تعيين كلمة المرور بنجاح",
          "successfullyRegistered": "تم التسجيل بنجاح",
          "chooseCategory": "اختر الفئة",
          "chooseSubCategory": "اختر الفئة الفرعية",
          "chooseBrand": "اختر العلامة التجارية",

          //========================== home ============================//

          "exit": "خروج",
          "productForYou": "منتجات لك",
          "categories": "الفئات",
          "areYouSureYouWantToExit": "هل أنت متأكد أنك تريد الخروج؟",
          "no": "لا",
          "yes": "نعم",
          "welcome": "مرحبًا",
          "findYourProduct": "ابحث عن منتجك",

          "home": "الرئيسية",
          "category": "الفئة",
          "cart": "العربة",
          "profile": "الملف الشخصي",
          "search": "بحث",
          "searchForProduct": "البحث عن منتج",
          "searchForBrand": "البحث عن علامة تجارية",
          "searchForCategory": "البحث عن فئة",
          "searchForSubCategory": "البحث عن فئة فرعية",
          "searchForStore": "البحث عن متجر",
          "searchForOffer": "البحث عن عرض",
          "searchForBrandOrCategory": "البحث عن علامة تجارية أو فئة",

          "offer": "عرض",

          //========================== Notification ============================//

          "notification": "الإشعارات",
          "noNotification": "لا يوجد إشعارات",
          "noNotificationDescription": "لا توجد إشعارات بعد",
          "deleteNotification": "حذف الإشعار",

          //========================== category ============================//

          "noCategory": "لا توجد فئة",
          "noCategoryDescription": "لا توجد فئات بعد",
          "noSubCategory": "لا توجد فئة فرعية",

          //========================== cart ============================//

          "myCart": "سلتي",
          "goToCart": "الانتقال إلى السلة",
          "ordersDetails": "تفاصيل الطلب",
          "coupon": "كوبون",
          "choosePaymentMethod": "اختر طريقة الدفع",
          "cashOnDelivery": "الدفع عند الاستلام",
          "payWhenYouReceiveYourOrder": "ادفع عند استلام الطلب",
          "totalPrice": "السعر الإجمالي",
          "item": "منتج",
          "qTY": "الكمية",
          "price": "السعر",
          "remove": "إزالة",
          "noCart": "لا توجد سلة",

          "payNow": "ادفع الآن",
          "pay": "ادفع",
          "paymentCards": "بطاقات الدفع",
          "creditCardOrDebitCard": "بطاقة الائتمان أو الخصم",
          "chooseDeliveryType": "اختر نوع التوصيل",

          "creditCard": "بطاقة الائتمان",
          "payPal": "باي بال",
          "sadad": "سداد",
          "mada": "مدى",
          "apply": "تطبيق",
          "couponCode": "رمز الكوبون",
          "order": "طلب",
          "youHave": "لديك",
          "itemsInYourCart": "منتج في سلتك",
          "receive": "استلام",
          "orderNumber": "رقم الطلب",
          "shippingAddress": "عنوان الشحن",
          "cartIsEmpty": "السلة فارغة",
          "total": "الإجمالي",
          "delivery": "التوصيل",
          "tax": "الضريبة",
          "discount": "الخصم",
          "subTotal": "الإجمالي الفرعي",
          "checkout": "إتمام الشراء",
          "continueShopping": "متابعة التسوق",
          "add": "إضافة",
          "quantity": "الكمية",
          "totalQuantity": "إجمالي الكمية",
          "totalDiscount": "إجمالي الخصم",
          "totalTax": "إجمالي الضريبة",

          //---------------------------profile-----------------------------------------//

          //---------------------------Address-----------------------------------------//
          "address": "العنوان",
          "addAddress": "إضافة عنوان",
          "editAddress": "تعديل العنوان",
          "addressName": "اسم العنوان",
          "completionOfTheAddress": "استكمال العنوان",
          "city": "المدينة",
          "area": "المنطقة",
          "street": "الشارع",
          "buildingNumber": "رقم المبنى",
          "floorNumber": "رقم الطابق",
          "apartmentNumber": "رقم الشقة",
          "landmark": "العلامة المميزة",
          "saveAddress": "حفظ العنوان",
          "addDetailsAddress": "إضافة تفاصيل العنوان",
          "name": "الاسم",
          "edit": "تعديل",
          "delete": "حذف",
          "noAddress": "لا توجد عناوين",

          "noOrder": "لا يوجد طلبات",
          "completion": "الاستكمال",
          "deleteAddress": "حذف العنوان",
          "addNewAddress": "إضافة عنوان جديد",
          "noAddressDescription": "لا توجد عناوين بعد",

          //---------------------------order-----------------------------------------//
        }
      };
}
