import 'package:flutter/material.dart';
import '../../../../all_export.dart';

class UsefulBeneficialPage extends StatelessWidget {
  const UsefulBeneficialPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.scaffoldBackgroundColor,
      body: SizedBox(
        // Wrap with Container to specify size
        height: MediaQuery.of(context)
            .size
            .height, // Set the height to match the screen height
        child: ListView(
          children: [
            Container(
              color: AppColor.scaffoldBackgroundColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const PageAppBar(),
                  const CustomCardHome(
                    title: "أفيد وأستفيد من كتبك",
                    imageUrl: 'assets/images/66.png',
                  ),
                  SizedBox(height: 70.h),
                ],
              ),
            ),
            Stack(
              children: [
                Container(
                  color: AppColor.primary2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 200.h),
                      Card(
                        color: AppColor.scaffoldBackgroundColor,
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                              25), // Adjust the radius as needed
                          side: BorderSide(
                            color: Colors.grey
                                .withOpacity(0.5), // Add a border color
                            width: 1, // Add a border width
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Center(
                            child: Column(
                              children: [
                                Text(
                                  "كم تكلفة عمولة حمزة",
                                  style: TextStyle(
                                    color: AppColor.black,
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "كم تكلفة عمولة حمزة",
                                  style: TextStyle(
                                    color: AppColor.black,
                                    fontSize: 26,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 200.h),
                    ],
                  ),
                ),
                Positioned(
                  top: -10,
                  left: 0,
                  right: 0,
                  // bottom: 0,
                  child: Card(
                    margin: const EdgeInsets.all(10),
                    elevation: 5,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(
                          30), // Adjust the radius as needed
                      side: BorderSide(
                        color:
                            Colors.grey.withOpacity(0.5), // Add a border color
                        width: 1, // Add a border width
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "كم تكلفة عمولة حمزة",
                            style: TextStyle(
                              color: AppColor.black,
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "تبلغ عموله همزه ريالان فقط لكل كتاب يدفعها البائع في حاله بيعه عن طريق المنصه ويمكن تحويل المعوله عن طريق",
                            style: TextStyle(
                              color: AppColor.secondaryText,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Urpay او STCPay فقط للرقم 0532533401",
                            style: TextStyle(
                              color: AppColor.red,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
