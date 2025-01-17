import '../../../../all_export.dart';

class CustomTextFormAuth extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final IconData iconData;
  final TextEditingController? mycontroller;
  final String? Function(String?) valid;
  final bool isNumber;
  final bool? obscureText;
  final void Function()? onTapIcon;

  const CustomTextFormAuth({
    super.key,
    this.obscureText,
    this.onTapIcon,
    required this.hinttext,
    required this.labeltext,
    required this.iconData,
    required this.mycontroller,
    required this.valid,
    required this.isNumber,
  });

  @override
  Widget build(BuildContext context) {
    final controller = mycontroller ?? TextEditingController();

    if (labeltext.toLowerCase() == 'email') {
      const emailSuffix = '@gmail.com';
      final currentValue = controller.text.toLowerCase();

      if (!currentValue.endsWith(emailSuffix)) {
        controller.text = currentValue + emailSuffix;
      }

      // Move cursor to the end of the editable portion
      controller.selection =
          TextSelection.collapsed(offset: currentValue.length);
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        keyboardType: isNumber
            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
        validator: valid,
        controller: controller,
        obscureText: obscureText == null || obscureText == false ? false : true,
        decoration: InputDecoration(
          hintText: hinttext,
          hintStyle: TextStyle(fontSize: 14.sp),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 30.w),
          label: Container(
            margin: EdgeInsets.symmetric(horizontal: 9.w),
            child: Text(labeltext),
          ),
          suffixIcon: InkWell(
            onTap: onTapIcon,
            child: Icon(iconData),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.spMin),
          ),
        ),
      ),
    );
  }
}
