// AddBookAdd.dart

// ignore_for_file: unused_local_variable, avoid_print

import 'package:exfai/addbook/controller/addbook/add_controller.dart';
import 'package:exfai/addbook/function/validinput.dart';
import 'package:exfai/core/shared/customdropdownsearch.dart';
import 'package:exfai/core/shared/customtextformglobal.dart';

import '../../../../all_export.dart';

class AddBookAdd extends StatefulWidget {
  const AddBookAdd({super.key});

  @override
  State<AddBookAdd> createState() => _AddBookAddState();
}

class _AddBookAddState extends State<AddBookAdd> {
  @override
  Widget build(BuildContext context) {
    print("Building AddBookAdd view");
    AddBookAddController controller = Get.put(AddBookAddController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Item'),
      ),
      body: GetBuilder<AddBookAddController>(
          builder: (controller) => HandlingDataView(
                statusRequest: controller.statusRequest!,
                widget: Container(
                    padding: const EdgeInsets.all(10),
                    child: Form(
                      key: controller.formState,
                      child: ListView(
                        children: [
                          CustomTextFormGlobal(
                            hinttext: " title",
                            labeltext: " title",
                            iconData: Icons.category,
                            mycontroller: controller.title,
                            valid: (val) {
                              return validInput(val!, 1, 30, "");
                            },
                            isNumber: false,
                          ),
                          CustomTextFormGlobal(
                              hinttext: " description",
                              labeltext: " description",
                              iconData: Icons.category,
                              mycontroller: controller.description,
                              valid: (val) {
                                return validInput(val!, 1, 30, "");
                              },
                              isNumber: false),
                          CustomTextFormGlobal(
                              hinttext: " author",
                              labeltext: " author",
                              iconData: Icons.category,
                              mycontroller: controller.author,
                              valid: (val) {
                                return validInput(val!, 1, 30, "");
                              },
                              isNumber: false),
                          CustomTextFormGlobal(
                              hinttext: " city",
                              labeltext: " city",
                              iconData: Icons.category,
                              mycontroller: controller.city,
                              valid: (val) {
                                return validInput(val!, 1, 30, "");
                              },
                              isNumber: false),
                          CustomTextFormGlobal(
                              hinttext: " price",
                              labeltext: " price",
                              iconData: Icons.category,
                              mycontroller: controller.price,
                              valid: (val) {
                                return validInput(val!, 1, 30, "");
                              },
                              isNumber: true),
                          CustomTextFormGlobal(
                              hinttext: " communication",
                              labeltext: " communication",
                              iconData: Icons.category,
                              mycontroller: controller.communication,
                              valid: (val) {
                                return validInput(val!, 1, 30, "");
                              },
                              isNumber: false),
                          CustomTextFormGlobal(
                              hinttext: " count",
                              labeltext: " count",
                              iconData: Icons.category,
                              mycontroller: controller.count!,
                              valid: (val) {
                                return validInput(val!, 1, 30, "");
                              },
                              isNumber: true),
                          CustomTextFormGlobal(
                              hinttext: " discount",
                              labeltext: " discount",
                              iconData: Icons.category,
                              mycontroller: controller.discount!,
                              valid: (val) {
                                return validInput(val!, 1, 30, "");
                              },
                              isNumber: true),
                          CustomDropdownSearch(
                              title: "Choose Category",
                              listdata: controller.dropdownlist,
                              dropdownSelectedName: controller.categorieName!,
                              dropdownSelectedID: controller.categoriesid!),
                          Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: MaterialButton(
                                color: AppColor.primary,
                                textColor: AppColor.white,
                                onPressed: () {
                                  controller.showOptionImage();
                                },
                                child: const Text("choose item image "),
                              )),
                          if (controller.file != null)
                            Image.file(
                              controller.file!,
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
