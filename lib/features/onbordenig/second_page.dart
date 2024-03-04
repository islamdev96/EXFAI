import '../../all_export.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(CategoriesViewController());
    final controller = Get.find<CategoriesViewController>();

    return Scaffold(
      // ignore: deprecated_member_use
      body: WillPopScope(
        onWillPop: () {
          return controller.myback();
        },
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/6.png"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 45.dm,
              left: 0,
              right: 0,
              child: Column(
                children: [
                  Center(
                    child: Image.asset(
                      'assets/images/66.png',
                      width: 100.w,
                      height: 100.h,
                    ),
                  ),
                  // SizedBox(height: 10.h),
                  Text(
                    'يا هلا بك في همزة',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  const Divider(
                    color: Colors.grey,
                    thickness: .4,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 240.h,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "انشئ حسابك...",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  buildLoginButton(
                    FontAwesomeIcons
                        .apple, // Using FontAwesomeIcons as IconData
                    'الاستمرار باستخدام ابل',
                    () {
                      // Add Facebook login functionality here
                    },
                  ),
                  SizedBox(height: 10.h),
                  buildLoginButton(
                    FontAwesomeIcons
                        .google, // Using FontAwesomeIcons as IconData
                    'الاستمرار باستخدام جوجل',
                    () {},
                  ),
                  const SizedBox(height: 10),
                  buildLoginButton(
                    FontAwesomeIcons
                        .twitter, // Using FontAwesomeIcons as IconData
                    'الاستمرار باستخدام تويتر',
                    () {
                      // Add Twitter login functionality here
                    },
                  ),
                  const SizedBox(height: 10),
                  buildLoginButton(
                    FontAwesomeIcons
                        .facebookF, // Using FontAwesomeIcons as IconData
                    'الاستمرار باستخدام فيسبوك',
                    () {
                      // Add Apple login functionality here
                    },
                  ),
                  SizedBox(height: 20.h),
                  GestureDetector(
                    onTap: () {
                      // Add skip functionality here
                    },
                    child: InkWell(
                      onTap: () {
                        Get.to(const Login());
                      },
                      child: Text(
                        "تخطي",
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  const Divider(
                    color: Colors.white,
                    thickness: .6,
                    indent: 20,
                    endIndent: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "لديك حساب؟",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(const Login());
                        },
                        child: Text(
                          "سجل دخول",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "   هل تواجه مشكله في تسجيل الدخول ؟",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          // Get.to(LoginFormPage());
                        },
                        child: Text(
                          " تواصل معنا",
                          style: TextStyle(
                            color: Colors.blue,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildLoginButton(IconData icon, String label, VoidCallback onPressed) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 13),
          decoration: BoxDecoration(
            color: AppColor.red,
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                color: AppColor.white,
                child: Icon(
                  icon,
                  // color: Colors.white,
                  size: 24,
                ),
              ),
              // const SizedBox(width: 10),
              Text(
                label,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
