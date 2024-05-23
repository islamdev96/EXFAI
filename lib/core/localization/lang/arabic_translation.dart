import '../../../../all_export.dart';

class ArabicTranslation extends MyTranslation {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          //========================== Anather ============================//
          "Egp": "جنيه",
          "continueShopping": "مواصلة التسوق",
          "findAProduct": "ابحث عن منتج",

          //========================== Checkout ============================//
          //========================== عملية الدفع ============================//

          "addNewAddress": "إضافة عنوان جديد",
          "error": "خطأ",
          "resetPassword": "إعادة تعيين كلمة المرور",
          "changeLanguage": "تغيير اللغة",
          "chooseTheLanguage": "اختر اللغة",
          "english": "انجليزي",
          "arabic": "عربي",

          "password": "كلمة المرور",
          "disableNotificatios": "تعطيل الإشعارات",
          "archive": "أرشيف",
          "aboutUs": "من نحن",
          "contactUs": "اتصل بنا",
          "logout": "تسجيل الخروج",
          "shipping": "الشحن",
          "minute": "دقيقة",
          "ratingDialog": "مربع التقييم",
          "orders": "طلبات",
          "tapAStar":
              "اضغط على نجمة لتحديد تقييمك. أضف المزيد من الوصف هنا إذا كنت ترغب.",
          "submit": "إرسال",
          "setYourCustomCommentHint": "حدد تعليقك المخصص",
          "cancelled": "تم الإلغاء",
          "orderType": "نوع الطلب",
          "deliveryPrice": "سعر التوصيل",
          "paymentMethod": "طريقة الدفع",
          "orderPrice": "سعر الطلب",
          "orderStatus": "حالة الطلب",
          "details": "تفاصيل",
          "tracking": "تتبع",
          "ordersTracking": "تتبع الطلبيات",
          "one": "واحد",
          "payment": "الدفع",
          "nowYouCanOrderToThisAddress": "الآن يمكنك الطلب إلى هذا العنوان",
          "emailOrPasswordNotCorrect":
              "البريد الإلكتروني أو كلمة المرور غير صحيحة",
          "verifyCodeNotCorrect": "رمز التحقق غير صحيح",
          "emailNotFound": "البريد الإلكتروني غير موجود",
          "passwordNotMatch": "كلمة المرور غير متطابقة",
          "tryAgain": "حاول مرة أخرى",
          "recive": "استلام",
          "pendingApproval": "بانتظار الموافقة",
          "theOrderIsBeingPrepaerror": "جاري تجهيز الطلب",
          "readyToPickedUpByDeliveryMan": "جاهز للاستلام من قبل سائق التوصيل",
          "onTheWay": "في الطريق",
          "theProductHasBeenAddedToTheCart": "تمت إضافة المنتج إلى السلة",
          "theCartIsEmpty": "السلة فارغة",
          "theProductHasBeenRemovedFromTheCart": "تمت إزالة المنتج من السلة",
          "couponNotValid": "القسيمة غير صالحة",
          "selectPaymentMethod": "يرجى اختيار طريقة الدفع",
          "selectOrderType": "يرجى اختيار نوع الطلب",
          "selectShoppingAddress": "يرجى اختيار عنوان التسوق",
          "orderSuccessful": "تم الطلب بنجاح",
          "productAddedToFavorites": "تمت إضافة المنتج إلى المفضلة الخاصة بك",
          "productRemovedFromWishlist":
              "تمت إزالة المنتج من قائمة الرغبات الخاصة بك",
          "cash": "نقداً",
          "paymentCard": "بطاقة الدفع",
          "chooseTypeDelivery": "اختر نوع التوصيل",
          "toReceive": "للاستلام",
          'itemsInYourList': "من العناصر في قائمتك",

          //========================== تنبيه ============================//
          "warning": "تحذير",
          "doYouWantToExitTheApp": "هل ترغب في الخروج من التطبيق؟",
          "confirmation": "تأكيد",
          "cancellation": "إلغاء",

          //========================== التطبيق ============================//
          "alert": "تنبيه",
          "attentionPleaseTurnOnTheLocationService": "يرجى تفعيل خدمة الموقع",
          "pleaseGiveTheSitePermissionForTheApplication":
              "يرجى منح إذن الموقع للتطبيق",
          "theApplicationCannotBeUsedWithoutSpecifyingYourLocation":
              "لا يمكن استخدام التطبيق بدون تحديد موقعك",

          //========================== قائمة التوجيه المباشر ============================//
          "chooseProduct": "اختر المنتج",
          "weHavea100kProduct":
              "لدينا 100 ألف منتج، اختر منتجك من متجرنا الإلكتروني",
          "easyAndSafe": "دفع سهل وآمن",
          "youCanPay": "يمكنك الدفع نقدًا أو من خلال بوابات الدفع",
          "trackYourOrder": "تتبع طلبك",
          "theOrderCanBeTracked": "يمكن تتبع الطلب في كل مرحلة حتى يصل إليك",
          "welcomeBack": "مرحبًا مجددًا",
          "continue": "استمرار",

//========================== المصادقة ============================//

          "resendVerfiyCode": "إعادة إرسال رمز التحقق",
          "reciveAVerificationCode":
              "الرجاء إدخال عنوان البريد الإلكتروني الخاص بك لتلقي رمز التحقق",

          "skip": "تخطي",
          "login": "تسجيل الدخول",
          "signUp": "التسجيل",
          "signIn": "تسجيل الدخول",
          "notAValidEmail": "ليس بريدًا إلكترونيًا صالحًا",
          "notAValidPhoneNumber": "ليس رقم هاتف صالح",
          "notAValidPassword": "ليس كلمة مرور صالحة",
          "passwordMustBeAtLeast8Characters":
              "يجب أن تكون كلمة المرور على الأقل 8 أحرف",
          "phoneNumberOrEmailAlreadyExists":
              "رقم الهاتف أو البريد الإلكتروني مستخدم بالفعل",
          "cannotBeEmpty": "لا يمكن أن يكون فارغًا",
          "CannotBeLessThan": "لا يمكن أن يكون أقل من",
          "cannotBeLargerThan": "لا يمكن أن يكون أكبر من",
          "notAValidUsername": "ليس اسم مستخدم صالح",
          "notAValidCode": "ليس رمزًا صالحًا",
          "notAValidNewPassword": "ليس كلمة مرور جديدة صالحة",
          "notAValidConfirmPassword": "ليس تأكيد كلمة مرور صالح",
          "notAValidOldPassword": "ليس كلمة مرور قديمة صالحة",
          "notAValidAddress": "ليس عنوانًا صالحًا",
          "notAValidCity": "ليس مدينة صالحة",
          "notAValidCountry": "ليس بلدًا صالحًا",
          "notAValidPostalCode": "ليس رمز بريدي صالح",
          "notAValidName": "ليس اسمًا صالحًا",
          "notAValidPhoneOrEmail": "ليس هاتفًا أو بريدًا إلكترونيًا صالحًا",
          "notAValidPhoneOrPassword": "ليس هاتفًا أو كلمة مرور صالحة",
          "notAValidPhoneOrUsername": "ليس هاتفًا أو اسم مستخدم صالحًا",
          "notAValidEmailOrPassword":
              "ليس بريدًا إلكترونيًا أو كلمة مرور صالحة",
          "notAValidEmailOrUsername":
              "ليس بريدًا إلكترونيًا أو اسم مستخدم صالحًا",
          "notAValidEmailOrPhone": "ليس بريدًا إلكترونيًا أو هاتفًا صالحًا",
          "notAValidUsernameOrPassword": "ليس اسم مستخدم أو كلمة مرور صالحة",
          "notAValidUsernameOrPhone": "ليس اسم مستخدم أو هاتفًا صالحًا",

          "signInYourEmailAndPassword":
              "قم بتسجيل الدخول باستخدام عنوان بريدك الإلكتروني وكلمة المرور أو استمر باستخدام وسائل التواصل الاجتماعي",
          "enterYourEmail": "أدخل عنوان بريدك الإلكتروني",
          "enterYourPhone": "أدخل رقم هاتفك",
          "enterYourPassword": "أدخل كلمة المرور الخاصة بك",
          "forgetPassword": "نسيت كلمة المرور",
          "dontHaveAnAccount": "ليس لديك حساب؟",
          "haveAnAccount": "لديك حساب؟",
          "signUpWithYourEmailAndPassword":
              "قم بالتسجيل باستخدام عنوان بريدك الإلكتروني وكلمة المرور أو استمر باستخدام وسائل التواصل الاجتماعي",
          "email": "البريد الإلكتروني",
          "username": "اسم المستخدم",
          "phone": "الهاتف",
          "congratulations": "تهانينا",
          "enterYourUsername": "أدخل اسم المستخدم الخاص بك",
          "signUpEmailAndPassword":
              "قم بالتسجيل باستخدام عنوان بريدك الإلكتروني وكلمة المرور أو استمر باستخدام وسائل التواصل الاجتماعي",
          "checkEmail": "تحقق من البريد الإلكتروني",
          "verificationCode": "رمز التحقق",
          "checkCode": "تحقق من الرمز",
          "pleaseEnterTheDigitCodeSentTo": "يرجى إدخال الرمز الرقمي المرسل إلى",
          "resendVerifyCode": "إعادة إرسال رمز التحقق",
          "enterYourVerificationCode": "أدخل رمز التحقق الخاص بك",
          "enterYourNewPassword": "أدخل كلمة المرور الجديدة الخاصة بك",
          "accountSuccessfullyCreated": "تم إنشاء الحساب بنجاح",
          "receiveAVerificationCode":
              "يرجى إدخال عنوان البريد الإلكتروني الخاص بك لتلقي رمز التحقق",
          "check": "تحقق",
          "goToLogin": "الانتقال إلى تسجيل الدخول",
          "success": "نجاح",
          "save": "حفظ",
          "pleaseEnterNewPassword": "يرجى إدخال كلمة مرور جديدة",
          "newPassword": "كلمة المرور الجديدة",
          "passwordResetSuccess": "تم إعادة تعيين كلمة المرور بنجاح",
          "successfullyRegisteerror": "تم التسجيل بنجاح",
          "chooseCategory": "اختر الفئة",
          "chooseSubCategory": "اختر الفئة الفرعية",
          "chooseBrand": "اختر العلامة التجارية",
          "damascusStreetOne": "شارع دمشق الأول",
          "hamaStreetTwo": "شارع حماة الثاني",

//========================== الصفحة الرئيسية ============================//

          "exit": "خروج",
          "productForYou": "منتجات من اجلك",
          "categories": "الاقسام",
          "areYouSureYouWantToExit": "هل أنت متأكد أنك تريد الخروج؟",
          "no": "لا",
          "yes": "نعم",
          "welcome": "مرحبًا",
          "findYourProduct": "ابحث عن منتجك",

          "home": "الصفحة الرئيسية",
          "category": "الفئة",
          "cart": "السلة",
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

          //========================== الإشعارات ============================//

          "notification": "الإشعارات",
          "noNotification": "لا توجد إشعارات",
          "noNotificationDescription": "لا توجد إشعارات حتى الآن",
          "deleteNotification": "حذف الإشعار",

          //========================== الفئات ============================//

          "noCategory": "لا توجد فئة",
          "noCategoryDescription": "لا توجد فئات حتى الآن",
          "noSubCategory": "لا توجد فئة فرعية",

//========================== السلة ============================//

          "myCart": "سلتي",
          "goToCart": "انتقل إلى السلة",
          "ordersDetails": "تفاصيل الطلب",
          "coupon": "كوبون",
          "choosePaymentMethod": "اختر طريقة الدفع",
          "cashOnDelivery": "الدفع عند الاستلام",
          "payWhenYouReceiveYourOrder": "الدفع عند استلام الطلب",
          "totalPrice": "السعر الإجمالي",
          "item": "العنصر",
          "qTY": "الكمية",
          "price": "السعر",
          "remove": "إزالة",
          "noCart": "لا توجد عناصر في السلة",

          "payNow": "ادفع الآن",
          "pay": "ادفع",
          "paymentCards": "بطاقات الدفع",
          "cerroritCardOrDebitCard": "بطاقة ائتمان أو بطاقة مدينة",
          "chooseDeliveryType": "اختر نوع التوصيل",

          "cerroritCard": "بطاقة الائتمان",
          "payPal": "باي بال",
          "sadad": "سداد",
          "mada": "مدى",
          "apply": "تطبيق",
          "couponCode": "رمز الكوبون",
          "order": "الطلب",
          "youHave": "لديك",
          "itemsInYourCart": "عناصر في سلتك",
          "receive": "استلام",
          "orderNumber": "رقم الطلب",
          "shippingAddress": "عنوان الشحن",
          "cartIsEmpty": "السلة فارغة",
          "total": "الإجمالي",
          "delivery": "التوصيل",
          "tax": "الضريبة",
          "discount": "الخصم",
          "subTotal": "المجموع الفرعي",
          "checkout": "اتمام الشراء",
          "continueShopping": "متابعة التسوق",
          "add": "إضافة",
          "quantity": "الكمية",
          "totalQuantity": "مجموع الكميات",
          "totalDiscount": "مجموع الخصومات",
          "totalTax": "مجموع الضرائب",

          //---------------------------الملف الشخصي-----------------------------------------//

          //---------------------------العناوين-----------------------------------------//
          "address": "العناوين",
          "addAddress": "إضافة عنوان",
          "editAddress": "تعديل العنوان",
          "addressName": "اسم العنوان",
          "completionOfTheAddress": "اكتمال العنوان",
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

          "noOrder": "لا توجد طلبات",
          "completion": "اكتمال",
          "deleteAddress": "حذف العنوان",
          "noAddressDescription": "لا توجد عناوين حتى الآن",

          //---------------------------الطلبات-----------------------------------------//
        }
      };
}
