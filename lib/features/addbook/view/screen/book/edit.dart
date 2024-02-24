// ignore_for_file: unused_local_variable

import 'package:exfai/all_export.dart';
import 'package:exfai/features/addbook/controller/edit_controller.dart';

class AddBookEdit extends StatefulWidget {
  const AddBookEdit({super.key});

  @override
  State<AddBookEdit> createState() => _AddBookEditState();
}

class _AddBookEditState extends State<AddBookEdit> {
  @override
  Widget build(BuildContext context) {
    AddBookEditController controller = Get.put(AddBookEditController());
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Item'),
      ),
      body: GetBuilder<AddBookEditController>(
          builder: (controller) => HandlingDataView(
                statusRequest: controller.statusRequest!,
                widget: Container(
                    padding: const EdgeInsets.all(10),
                    child: Form(
                      key: controller.formState,
                      child: ListView(
                        children: [
                          CustomTextFormGlobal(
                              hinttext: "title",
                              labeltext: "title",
                              iconData: Icons.category,
                              mycontroller: controller.title,
                              valid: (val) {
                                return validateInput(val!, 1, 50, "");
                              },
                              isNumber: false),
                          CustomTextFormGlobal(
                              hinttext: " description",
                              labeltext: "description",
                              iconData: Icons.category,
                              mycontroller: controller.description,
                              valid: (val) {
                                return validateInput(val!, 1, 50, "");
                              },
                              isNumber: false),
                          CustomTextFormGlobal(
                              hinttext: "author",
                              labeltext: "author",
                              iconData: Icons.category,
                              mycontroller: controller.author,
                              valid: (val) {
                                return validateInput(val!, 1, 200, "");
                              },
                              isNumber: false),
                          CustomTextFormGlobal(
                              hinttext: "city",
                              labeltext: "city",
                              iconData: Icons.category,
                              mycontroller: controller.city,
                              valid: (val) {
                                return validateInput(val!, 1, 200, "");
                              },
                              isNumber: false),
                          CustomTextFormGlobal(
                              hinttext: "communication",
                              labeltext: "communication",
                              iconData: Icons.category,
                              mycontroller: controller.communication,
                              valid: (val) {
                                return validateInput(val!, 1, 30, "");
                              },
                              isNumber: false),
                          CustomTextFormGlobal(
                              hinttext: " price",
                              labeltext: " price",
                              iconData: Icons.category,
                              mycontroller: controller.price,
                              valid: (val) {
                                return validateInput(val!, 1, 30, "");
                              },
                              isNumber: true),
                          CustomTextFormGlobal(
                              hinttext: " count",
                              labeltext: " count",
                              iconData: Icons.category,
                              mycontroller: controller.count,
                              valid: (val) {
                                return validateInput(val!, 1, 30, "");
                              },
                              isNumber: true),
                          CustomTextFormGlobal(
                              hinttext: " discount",
                              labeltext: " discount",
                              iconData: Icons.category,
                              mycontroller: controller.discount,
                              valid: (val) {
                                return validateInput(val!, 1, 30, "");
                              },
                              isNumber: true),
                          CustomDropdownSearch(
                              title: "Choose Category",
                              listdata: controller.dropdownlist,
                              dropdownSelectedName: controller.categorieName!,
                              dropdownSelectedID: controller.categoriesid!),
                          const SizedBox(
                            height: 10,
                          ),
                          RadioListTile(
                              title: const Text("hide"),
                              value: "0",
                              groupValue: controller.active,
                              onChanged: (val) {
                                controller.changeStatusActive(val!);
                              }),
                          RadioListTile(
                              title: const Text("active"),
                              value: "1",
                              groupValue: controller.active,
                              onChanged: (val) {
                                controller.changeStatusActive(val!);
                              }),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: MaterialButton(
                                color: AppColor.primary,
                                textColor: AppColor.white,
                                onPressed: () {
                                  // controller.showOptionImage();
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
                              controller.editData();
                            },
                          )
                        ],
                      ),
                    )),
              )),
    );
  }
}
