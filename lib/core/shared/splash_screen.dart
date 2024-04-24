// ignore_for_file: library_private_types_in_public_api

import '../../all_export.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _redirectToLoginScreen();
  }

  void _redirectToLoginScreen() {
    Future.delayed(const Duration(seconds: 2), () {
      Get.offAndToNamed(AppRoute.login);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Get.offAndToNamed(AppRoute.login);
        },
        child: Stack(
          fit: StackFit.expand,
          children: [
            _buildBackgroundCircle(color: Colors.black.withOpacity(0.6)),
            _buildBackgroundImage(),
            _buildSplashContent(),
          ],
        ),
      ),
    );
  }

  Widget _buildBackgroundCircle({required Color color}) {
    return Positioned.fill(
      child: Align(
        alignment: Alignment.center,
        child: Container(
          width: 250.w,
          height: 250.h,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
        ),
      ),
    );
  }

  Widget _buildBackgroundImage() {
    return Positioned.fill(
      child: Image.asset(
        AppImageAsset.backgroundImageBook,
        fit: BoxFit.fill,
      ),
    );
  }

  Widget _buildSplashContent() {
    return Center(
      child: Container(
        width: 355.w,
        height: 355.h,
        padding: EdgeInsets.all(12.w),
        child: Stack(
          alignment: Alignment.center,
          children: [
            _buildBackgroundCircle(color: Colors.black.withOpacity(0.7)),
            Positioned(
              bottom: (355 - 150.h) / 2,
              child: Column(
                children: [
                  Image.asset(
                    AppImageAsset.appLogo,
                    width: 120.w,
                    height: 120.h,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'يا هلا بك في همزة',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
