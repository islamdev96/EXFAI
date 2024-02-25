import '../../all_export.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Get.offAndToNamed(AppRoute.secondPage);
        },
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                width: 200.w,
                height: 200.h,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black.withOpacity(0.6),
                ),
              ),
            ),
            Positioned(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: Image.asset(
                  'assets/images/6.png',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Center(
              child: Container(
                width: 355.w,
                height: 355.h,
                padding: EdgeInsets.all(12.w),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        width: 200.w,
                        height: 200.h,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black.withOpacity(0.7),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: (355 - 150.h) / 2,
                      child: Column(
                        children: [
                          SizedBox(
                            child: Column(
                              children: [
                                Center(
                                  child: Image.asset(
                                    'assets/images/66.png',
                                    width: 120.w,
                                    height: 120.h,
                                  ),
                                ),
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
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
