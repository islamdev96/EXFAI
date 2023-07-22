import '../../../all_export.dart';

class ArabicTranslation extends MyTranslation {
  @override
  Map<String, Map<String, String>> get keys => {
        "ar": {
          //---------------------------Application---------------------------------------//

          "alert": "تنبيه",
          "attentionPleaseTurnOnTheLocationService": "الرجاء تشغيل خدمة الموقع",
          "pleaseGiveTheSitePermissionForTheApplication":
              "الرجاء إعطاء إذن الموقع للتطبيق",
          "theApplicationCannotBeUsedWithoutSpecifyingYourLocation":
              "لا يمكن استخدام التطبيق دون تحديد موقعك",

          //========================== onBoardingList ============================//

          "chooseProduct": "اختر المنتج",
          "weHavea100kProduct":
              "لدينا 100 ألف منتج، اختر منتجك من متجرنا الإلكتروني",
          "easyAndSafe": "دفع سهل وآمن",
          "youCanPay": "يمكنك الدفع نقدًا أو من خلال بوابات الدفع",
          "trackYourOrder": "تتبع طلبك",
          "theOrderCanBeTracked": "يمكن تتبع الطلب في كل مرحلة حتى يصل إليك",
          "welcomeBack": "مرحبًا بعودتك",
          "continue": "متابعة",

          //========================== auth ============================//

          "skip": "تخطى",
          "login": "تسجيل الدخول",
          "signUp": "إنشاء حساب",
          "signIn": "تسجيل الدخول",
          "notAValidEmail": "البريد الإلكتروني غير صالح",
          "notAValidPhoneNumber": "رقم الهاتف غير صالح",
          "notAValidPassword": "كلمة المرور غير صالحة",
          "passwordMustBeAtLeast8Characters":
              "يجب أن تتكون كلمة المرور من 8 أحرف على الأقل",
          "warning": "تحذير",
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
          "notAValidPostalCode": "الرمز البريدي غير صالح",
          "notAValidName": "اسم غير صالح",
          "notAValidPhoneOrEmail": "رقم هاتف أو بريد إلكتروني غير صالح",
          "notAValidPhoneOrPassword": "رقم الهاتف أو كلمة المرور غير صالحة",
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
              "قم بتسجيل الدخول باستخدام بريدك الإلكتروني وكلمة المرور أو استمر بواسطة وسائل التواصل الاجتماعي",
          "enterYourEmail": "أدخل بريدك الإلكتروني",
          "enterYourPhone": "أدخل رقم هاتفك",
          "enterYourPassword": "أدخل كلمة المرور الخاصة بك",
          "forgetPassword": "نسيت كلمة المرور",
          "dontHaveAnAccount": "ليس لديك حساب؟",
          "haveAnAccount": "لديك حساب؟",
          "signUpWithYourEmailAndPassword":
              "سجل الدخول باستخدام بريدك الإلكتروني وكلمة المرور أو استمر بواسطة وسائل التواصل الاجتماعي",
          "email": "البريد الإلكتروني",
          "password": "كلمة المرور",
          "username": "اسم المستخدم",
          "phone": "رقم الهاتف",
          "congratulations": "تهانينا",
          "enterYourUsername": "أدخل اسم المستخدم الخاص بك",
          "signUpEmailAndPassword":
              "سجل الدخول باستخدام بريدك الإلكتروني وكلمة المرور أو استمر بواسطة وسائل التواصل الاجتماعي",
          "checkEmail": "تحقق من البريد الإلكتروني",
          "verificationCode": "رمز التحقق",
          "checkCode": "تحقق من الكود",
          "pleaseEnterTheDigitCodeSentTo": "يرجى إدخال الرمز الرقمي المرسل إلى",
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
          "pleaseEnterNewPassword": "يرجى إدخال كلمة مرور جديدة",
          "newPassword": "كلمة المرور الجديدة",
          "passwordResetSuccess": "تم إعادة تعيين كلمة المرور بنجاح",
          "successfullyRegistered": "تم التسجيل بنجاح",
          "chooseCategory": "اختر الفئة",
          "chooseSubCategory": "اختر الفئة الفرعية",
          "chooseBrand": "اختر العلامة التجارية",

          //========================== home ============================//

          "exit": "خروج",
          "areYouSureYouWantToExit": "هل أنت متأكد أنك تريد الخروج؟",
          "no": "لا",
          "yes": "نعم",
          "welcome": "مرحبا",
          "findYourProduct": "ابحث عن منتجك",

          "home": "الصفحة الرئيسية",
          "category": "الفئة",
          "cart": "العربة",
          "profile": "الملف الشخصي",
          "search": "بحث",
          "searchForProduct": "البحث عن المنتج",
          "searchForBrand": "البحث عن العلامة التجارية",
          "searchForCategory": "البحث عن الفئة",
          "searchForSubCategory": "البحث عن الفئة الفرعية",
          "addToCart": "أضف إلى العربة",
          "viewDetails": "عرض التفاصيل",
          "relatedProducts": "منتجات ذات صلة",
          "productDetails": "تفاصيل المنتج",
          "available": "متاح",
          "outOfStock": "غير متاح",
          "reviews": "التقييمات",
          "noReviews": "لا توجد تقييمات",
          "addToFavorites": "أضف إلى المفضلة",
          "removeFromFavorites": "إزالة من المفضلة",
          "productAddedToCart": "تمت إضافة المنتج إلى العربة",
          "productRemovedFromCart": "تمت إزالة المنتج من العربة",
          "quantity": "الكمية",
          "selectQuantity": "اختر الكمية",
          "subtotal": "المجموع الفرعي",
          "proceedToCheckout": "استكمال الشراء",
          "total": "المجموع",
          "orderSummary": "ملخص الطلب",
          "shippingAddress": "عنوان الشحن",
          "paymentMethod": "طريقة الدفع",
          "confirmOrder": "تأكيد الطلب",
          "orderPlacedSuccessfully": "تم إرسال الطلب بنجاح",
          "orderFailed": "فشل في إرسال الطلب",
          "orderDetails": "تفاصيل الطلب",
          "orderNumber": "رقم الطلب",
          "date": "التاريخ",
          "status": "الحالة",
          "pending": "قيد الانتظار",
          "inProcess": "قيد التنفيذ",
          "shipped": "تم الشحن",
          "delivered": "تم التوصيل",
          "cancelled": "تم الإلغاء",
          "orderCancelled": "تم إلغاء الطلب",
          "cancelOrder": "إلغاء الطلب",
          "orderCancellationReason": "سبب إلغاء الطلب",
          "orderCancellationSuccess": "تم إلغاء الطلب بنجاح",
          "orderCancellationFailed": "فشل إلغاء الطلب",
          "cancel": "إلغاء",
          "reason": "السبب",
          "order": "الطلب",
          "myOrders": "طلباتي",
          "orderHistory": "سجل الطلبات",
          "noOrdersFound": "لم يتم العثور على أي طلبات",
          "trackOrder": "تتبع الطلب",
          "currentLocation": "الموقع الحالي",
          "destination": "الوجهة",
          "directions": "الاتجاهات",
          "orderTracking": "تتبع الطلب",
          "orderStatus": "حالة الطلب",
          "shippingDetails": "تفاصيل الشحن",
          "paymentDetails": "تفاصيل الدفع",
          "contactInformation": "معلومات الاتصال",
          "shippingMethod": "طريقة الشحن",
          "billingAddress": "عنوان الفواتير",
          "paymentSummary": "ملخص الدفع",
          "paymentStatus": "حالة الدفع",
          "paymentFailed": "فشل في الدفع",
          "paymentSuccessful": "تم الدفع بنجاح",
          "paymentPending": "معلق على الدفع",
          "subTotal": "المجموع الفرعي",
          "shippingCost": "تكلفة الشحن",
          "tax": "الضريبة",
          "discount": "الخصم",
          "orderTotal": "إجمالي الطلب",
          "billingDetails": "تفاصيل الفواتير",
          "firstName": "الاسم الأول",
          "lastName": "الاسم الأخير",
          "address": "العنوان",
          "city": "المدينة",
          "state": "المنطقة",
          "zipCode": "الرمز البريدي",
          "phoneNumber": "رقم الهاتف",
          "emailAddress": "عنوان البريد الإلكتروني",
          "creditCard": "بطاقة الائتمان",
          "debitCard": "بطاقة الخصم",
          "cashOnDelivery": "الدفع عند التسليم",
          "paypal": "PayPal",
          "stripe": "Stripe",
          "paymentMethodSelected": "تم اختيار طريقة الدفع",
          "placeOrder": "تأكيد الطلب",
          "searchResults": "نتائج البحث",
          "noSearchResults": "لم يتم العثور على نتائج بحث",
          "goBack": "العودة",
          "resetPassword": "إعادة تعيين كلمة المرور",
          "enterYourEmailToReset":
              "أدخل عنوان البريد الإلكتروني الخاص بك لإعادة تعيين كلمة المرور",
          "submit": "إرسال",
          "passwordResetEmailSent":
              "تم إرسال بريد إلكتروني لإعادة تعيين كلمة المرور",
          "emailNotFound": "لم يتم العثور على عنوان البريد الإلكتروني",
          "backToLogin": "العودة إلى تسجيل الدخول",
          "accountSettings": "إعدادات الحساب",
          "changePassword": "تغيير كلمة المرور",
          "currentPassword": "كلمة المرور الحالية",
          "confirmPassword": "تأكيد كلمة المرور",
          "passwordMismatch": "كلمة المرور غير متطابقة",
          "passwordChanged": "تم تغيير كلمة المرور بنجاح",
          "passwordChangeFailed": "فشل تغيير كلمة المرور",
          "notifications": "الإشعارات",
          "emailNotifications": "إشعارات البريد الإلكتروني",
          "pushNotifications": "إشعارات الدفع",
          "orderNotifications": "إشعارات الطلب",
          "promotionalNotifications": "إشعارات ترويجية",
          "privacySettings": "إعدادات الخصوصية",
          "personalInformation": "المعلومات الشخصية",
          "manageAddresses": "إدارة العناوين",
          "language": "اللغة",
          "english": "الإنجليزية",
          "spanish": "الإسبانية",
          "french": "الفرنسية",
          "portuguese": "البرتغالية",
          "arabic": "العربية",
          "darkMode": "الوضع الداكن",
          "termsAndConditions": "الشروط والأحكام",
          "privacyPolicy": "سياسة الخصوصية",
          "aboutUs": "معلومات عنا",
          "contactUs": "اتصل بنا",
          "faq": "الأسئلة الشائعة",
          "logout": "تسجيل الخروج"
        }
      };
}






























// import '../translate.dart';

// class ArabicTranslation extends MyTranslation {
//   @override
//   Map<String, Map<String, String>> get keys => {
//         "ar": {
//           //---------------------------Application---------------------------------------//

//           "alert": "تنبيه",
//           "attentionPleaseTurnOnTheLocationService": "الرجاء تشغيل خدمة الموقع",
//           "pleaseGiveTheSitePermissionForTheApplication":
//               "الرجاء إعطاء إذن الموقع للتطبيق",
//           "theApplicationCannotBeUsedWithoutSpecifyingYourLocation":
//               "لا يمكن استخدام التطبيق دون تحديد موقعك",
//           //---------------------------onBoardingList---------------------------------------//

//           "chooseProduct": "اختر المنتج",
//           "weHavea100kProduct":
//               "لدينااكثر من 10 ألف منتج، اختر  منتجك من متجر التجارة الإلكترونية الخاص بنا",
//           "easyAndSafe": "دفع سهل وآمن",
//           "youCanPay": "يمكنك الدفع نقدًا أو من خلال بوابات الدفع",
//           "trackYourOrder": "تتبع طلبك",
//           "theOrderCanBeTracked": "يمكن تتبع الطلب في كل مرحلة حتى يصل إليك",
//           "welcomeBack": "مرحبا بعودتك",
//           "continue": "استمرار",

//           //---------------------------auth-----------------------------------------//
//           "skip": "تخطى",
//           "login": "تسجيل الدخول",

//           "signInYourEmailAndPassword":
//               "تسجيل الدخول بالبريد الإلكتروني وكلمة المرور أو متابعة مع وسائل التواصل الاجتماعي",
//           "enterYourEmail": "أدخل بريدك الإلكتروني",
//           "enterYourPhone": "أدخل رقم هاتفك",
//           "enterYourPassword": "أدخل كلمة المرور الخاصة بك",
//           "forgetPassword": "نسيت كلمة المرور",
//           "signIn": "تسجيل الدخول",
//           "dontHaveAnAccount": "ليس لديك حساب ؟ ",
//           "signUp": "سجل",
//           "signUpWithYourEmailAndPassword":
//               "الاشتراك مع البريد الإلكتروني وكلمة المرور الخاصة بك أو متابعة مع وسائل التواصل الاجتماعي",
//           "email": "البريد الإلكتروني",
//           "password": "كلمه السر",
//           "username": "اسم المستخدم",
//           "phone": "هاتف",
//           "congratulations": "تهانينا",
//           "haveanaccount": "هل لديك حساب ؟",

//           "signUpEmailAndPassword":
//               "الاشتراك مع البريد الإلكتروني وكلمة المرور الخاصة بك أو متابعة مع وسائل التواصل الاجتماعي",
//           "haveAnAccount": " هل لديك حساب ؟ ",
//           "checkEmail": "تحقق من البريد الإلكتروني",
//           "verificationCode": "رمز التحقق",
//           "checkCode": "تحقق من الرمز",
//           "pleaseEnterTheDigitCodeSentTo": "الرجاء إدخال رمز الرقم المرسل إلى",
//           "resendVerfiyCode": "إعادة إرسال رمز التحقق",
//           "enterYourVerificationCode": "أدخل رمز التحقق الخاص بك",
//           "enterYourNewPassword": "أدخل كلمة المرور الجديدة الخاصة بك",

//           "accountSuccessfullyCreated": "تم إنشاء الحساب بنجاح",
//           "ReciveAVerificationCode":
//               "الرجاء إدخال عنوان البريد الإلكتروني الخاص بك لتلقي رمز التحقق",
//           "check": "تحقق",
//           "goToLogin": "الذهاب إلى تسجيل الدخول",
//           "success": "نجاح",
//           "save": "حفظ",
//           "pleaseEnterNewPassword": "الرجاء إدخال كلمة مرور جديدة",
//           "newPassword": "كلمة السر الجديدة",
//           "passwordResetSuccess": "تم إعادة تعيين كلمة المرور بنجاح",
//           "passwordResetFailed": "فشل إعادة تعيين كلمة المرور",
//           "passwordReset": "إعادة تعيين كلمة المرور",
//           "passwordResetLinkSent":
//               "تم إرسال رابط إعادة تعيين كلمة المرور إلى بريدك الإلكتروني",
//           "passwordResetLinkFailedToSend":
//               "فشل إرسال رابط إعادة تعيين كلمة المرور إلى بريدك الإلكتروني",
//           "passwordResetLink": "إعادة تعيين كلمة المرور",
//           "passwordResetLinkSentTo":
//               "تم إرسال رابط إعادة تعيين كلمة المرور إلى",

//           "passwordResetLinkFailedToSendTo":
//               "فشل إرسال رابط إعادة تعيين كلمة المرور إلى",
//           "passwordResetLinkSentToEmail":
//               "تم إرسال رابط إعادة تعيين كلمة المرور إلى بريدك الإلكتروني",
//           "passwordResetLinkFailedToSendToEmail":
//               "فشل إرسال رابط إعادة تعيين كلمة المرور إلى بريدك الإلكتروني",
//           "passwordResetLinkSentToPhone":
//               "تم إرسال رابط إعادة تعيين كلمة المرور إلى هاتفك",

//           "enterYourUsername": "أدخل اسم المستخدم الخاص بك",

//           "successfullyRegistered": "تم التسجيل بنجاح",
//           "chooseCategory": "اختر الفئة",
//           "chooseSubCategory": "اختر الفئة الفرعية",
//           "chooseBrand": "اختر العلامة التجارية",

//           //---------------------------home-----------------------------------------//
//           "home": "الصفحة الرئيسية",
//           "category": "الفئة",
//           "cart": "عربة التسوق",
//           "profile": "الملف الشخصي",
//           "search": "بحث",
//           "searchForProduct": "البحث عن المنتج",
//           "searchForBrand": "Search For Brand",
//           "searchForCategory": "Search For Category",
//           "searchForSubCategory": "Search For Sub Category",

// //////////////////////////////////////////////////////////////////////
//           "7":
//               "The order can be tracked at every stage \n until it reaches you",
//           "8": "Continue",
//           "9": "Sign In",
//           "10": "Welcome Back",
//           "11":
//               "Sign In Your Email And Password Or  Continue With Social Media",
// //           "12": "Enter Your Email",
// //           "13": "Enter Your Password",
// //           "14": "Forget Password",
// //           "15": "Sign In",
// //           "16": "Dont Have An Account ? ",
// //           "17": "Sign Up",
// //           "18": "Email",
// //           "19": "Password",
// //           "20": "Username",
// //           "21": "Phone",
// //           "22": "Enter Your Phone",
// //           "23": "Enter Your Username",
// //           "24":
// //               "Sign Up With Your Email And Password OR Continue With Social Media",
// //           "25": " have an account ? ",
// //           "26": "SignIn",
// //           "27": "Check Email",
// //           "28": "Account successfully created",
// //           "29": "please Enter Your Email Address To Recive A verification code",
// //           "30": "check",
// //           "31": "Go To Login",
// //           "32": "Success",
// //           "33": "save",
// //           "34": "Please Enter new Password",
// //           "35": "New Password",
// //           "36": "Password has been reset successfully",
// //           "37": "congratulations",
// //           "38": "successfully registered"
//         },
//       };
// }
