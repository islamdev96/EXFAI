// ignore_for_file: unused_local_variable

import '../../../../all_export.dart';

class AddressAddDetails extends StatelessWidget {
  const AddressAddDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AddAddressDetailsController controller =
        Get.put(AddAddressDetailsController());
    return Scaffold(
      appBar: AppBar(
        title: Text('addDetailsAddress'.tr),
      ),
      body: Container(
          padding: const EdgeInsets.all(15),
          child: GetBuilder<AddAddressDetailsController>(
            builder: (controller) => HandlingDataView(
                statusRequest: controller.statusRequest,
                widget: ListView(children: [
                  CustomTextFormAuth(
                      hinttext: "city".tr,
                      labeltext: "city".tr,
                      iconData: Icons.location_city,
                      mycontroller: controller.city,
                      valid: (val) {
                        return null;
                      },
                      isNumber: false),
                  CustomTextFormAuth(
                      hinttext: "street".tr,
                      labeltext: "street".tr,
                      iconData: Icons.streetview,
                      mycontroller: controller.street,
                      valid: (val) {
                        return null;
                      },
                      isNumber: false),
                  CustomTextFormAuth(
                      hinttext: "name".tr,
                      labeltext: "name".tr,
                      iconData: Icons.near_me,
                      mycontroller: controller.name,
                      valid: (val) {
                        return null;
                      },
                      isNumber: false),
                  CustomButton(
                    text: "add".tr,
                    onPressed: () {
                      controller.addAddress();
                    },
                  )
                ])),
          )),
    );
  }
}
