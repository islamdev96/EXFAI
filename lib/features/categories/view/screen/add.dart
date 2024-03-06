import 'package:exfai/all_export.dart';

class CategoriesAdd extends StatefulWidget {
  const CategoriesAdd({super.key});

  @override
  State<CategoriesAdd> createState() => _CategoriesAddState();
}

class _CategoriesAddState extends State<CategoriesAdd> {
  final CategoriesAddController controller = Get.put(CategoriesAddController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Category'),
      ),
      body: GetBuilder<CategoriesAddController>(
        builder: (controller) => HandlingDataView(
          statusRequest: controller.statusRequest!,
          widget: Padding(
            padding: const EdgeInsets.all(10),
            child: Form(
              key: controller.formState,
              child: ListView(
                children: [
                  CustomTextFormGlobal(
                    hinttext: "Enter Category Name",
                    labeltext: "Category Name",
                    mycontroller: controller.name,
                    valid: (val) {
                      return validateInput(
                          val!, 1, 30, "Category Name is required");
                    },
                    isNumber: false,
                  ),
                  CustomTextFormGlobal(
                    hinttext: "Enter Category Name (Arabic)",
                    labeltext: "Category Name (Arabic)",
                    mycontroller: controller.description,
                    valid: (val) {
                      return validateInput(
                          val!, 1, 30, "Category Name (Arabic) is required");
                    },
                    isNumber: false,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: MaterialButton(
                      minWidth: double
                          .infinity, // Ensuring the button takes up the full width
                      color: AppColor.primary,
                      textColor: AppColor.white,
                      onPressed: () {
                        controller.showOptionImage();
                      },
                      child: const Text("Choose Item Image"),
                    ),
                  ),
                  if (controller.file != null)
                    Image.file(
                      controller.file!,
                      width: 100,
                      height: 100,
                    ),
                  CustomButton(
                    text: "Add",
                    onPressed: () {
                      controller.addData();
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
