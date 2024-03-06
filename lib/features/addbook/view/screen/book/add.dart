// AddBookAdd.dart

// ignore_for_file: unused_local_variable, avoid_print

import 'dart:io';

import 'package:exfai/features/addbook/controller/addbook/add_controller.dart';
import 'package:exfai/features/addbook/view/screen/city.dart';

import '../../../../../all_export.dart';

class AddBookAdd extends StatefulWidget {
  const AddBookAdd({super.key});

  @override
  State<AddBookAdd> createState() => _AddBookAddState();
}

class _AddBookAddState extends State<AddBookAdd> {
  @override
  Widget build(BuildContext context) {
    AddBookAddController controller = Get.put(AddBookAddController());
    return Scaffold(
      body: GetBuilder<AddBookAddController>(
          builder: (controller) => HandlingDataView(
                statusRequest: controller.statusRequest!,
                widget: Container(
                    padding: const EdgeInsets.all(10),
                    child: Form(
                      key: controller.formState,
                      child: ListView(
                        children: [
                          const PageAppBar(),
                          const CustomCardHome(
                            title: "اعرض كتابك",
                            imageUrl: 'assets/images/23.png',
                            imageHeight: 65,
                            imageWidth: 65,
                          ),
                          SizedBox(
                            height: 25.h,
                          ),

                          CustomTextFormGlobal(
                            hinttext: "مثل كتاب حياة في الاداره",
                            labeltext: "عنوان الكتاب",
                            mycontroller: controller.title,
                            valid: (val) {
                              return validateInput(val!, 1, 30, "");
                            },
                            isNumber: false,
                          ),
                          CustomTextFormGlobal(
                              hinttext: " مثل عما يتحدث الكتاب",
                              labeltext: " وصف الكتاب",
                              mycontroller: controller.description,
                              valid: (val) {
                                return validateInput(val!, 1, 30, "");
                              },
                              isNumber: false),
                          CustomTextFormGlobal(
                              hinttext: " مثل غازي القصيبي",
                              labeltext: " مؤلف الكتاب",
                              mycontroller: controller.author,
                              valid: (val) {
                                return validateInput(val!, 1, 30, "");
                              },
                              isNumber: false),
                          CustomDropdownSearch(
                              title: "تصنيف الكتاب",
                              listdata: controller.dropdownlist,
                              dropdownSelectedName: controller.categorieName!,
                              dropdownSelectedID: controller.categoriesid!),
                          CustomDropdownSearchCity(
                            title: "حدد المدينه",
                            dropdownSelectedName: TextEditingController(),
                            dropdownSelectedID: TextEditingController(),
                            citiesList: citiesList,
                          ),
                          CustomTextFormGlobal(
                              hinttext: " بكم ودك تبيع كتابك",
                              labeltext: " السعر",
                              mycontroller: controller.price,
                              valid: (val) {
                                return validateInput(val!, 1, 30, "");
                              },
                              isNumber: true),
                          CustomTextFormGlobal(
                              hinttext: "التواصل عن طريق",
                              labeltext: " التواصل",
                              mycontroller: controller.communication,
                              valid: (val) {
                                return validateInput(val!, 1, 30, "");
                              },
                              isNumber: false),
                          const SizedBox(
                              height:
                                  20), // Add some spacing between the two elements
                          Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: MaterialButton(
                                color: AppColor.primary,
                                textColor: AppColor.white,
                                onPressed: () {
                                  controller.showOptionImage();
                                },
                                child: const Text(
                                  "اختر صورة الكتاب",
                                  style: TextStyle(color: Colors.white),
                                ),
                              )),
                          if (controller.files != null)
                            Image.file(
                              controller.files!,
                              width: 100,
                              height: 100,
                            ),
                          CustomButton(
                            text: " اضافة",
                            onPressed: () {
                              controller.addData();
                            },
                          )
                        ],
                      ),
                    )),
              )),
    );
  }
}
