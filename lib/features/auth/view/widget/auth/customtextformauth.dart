// ignore_for_file: library_private_types_in_public_api

import '../../../../../../all_export.dart';

class CustomTextFormAuth extends StatefulWidget {
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
  _CustomTextFormAuthState createState() => _CustomTextFormAuthState();
}

class _CustomTextFormAuthState extends State<CustomTextFormAuth> {
  late TextEditingController controller;

  @override
  void initState() {
    super.initState();
    controller = widget.mycontroller ?? TextEditingController();

    if (widget.labeltext.toLowerCase() == 'email') {
      const emailSuffix = '@gmail.com';
      final currentValue = controller.text.toLowerCase();

      if (!currentValue.endsWith(emailSuffix)) {
        controller.text = currentValue + emailSuffix;
      }

      // Move cursor to the end of the editable portion
      controller.selection =
          TextSelection.collapsed(offset: currentValue.length);
    }
  }

  @override
  void didUpdateWidget(covariant CustomTextFormAuth oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.mycontroller != oldWidget.mycontroller) {
      if (oldWidget.mycontroller != null) {
        oldWidget.mycontroller!.removeListener(_handleControllerListener);
      }
      if (widget.mycontroller != null) {
        controller = widget.mycontroller!;
        controller.addListener(_handleControllerListener);
      }
    }
  }

  void _handleControllerListener() {
    setState(() {});
  }

  @override
  void dispose() {
    // Remove the listener before disposing
    controller.removeListener(_handleControllerListener);
    // Dispose the controller if it's not the provided controller
    if (widget.mycontroller == null) {
      controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: TextFormField(
        keyboardType: widget.isNumber
            ? const TextInputType.numberWithOptions(decimal: true)
            : TextInputType.text,
        validator: widget.valid,
        controller: controller,
        obscureText: widget.obscureText == null || widget.obscureText == false
            ? false
            : true,
        decoration: InputDecoration(
          hintText: widget.hinttext,
          hintStyle: TextStyle(fontSize: 14.sp),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 30.w),
          label: Container(
            margin: EdgeInsets.symmetric(horizontal: 9.w),
            child: Text(widget.labeltext),
          ),
          suffixIcon: InkWell(
            onTap: widget.onTapIcon,
            child: Icon(widget.iconData),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.spMin),
          ),
        ),
      ),
    );
  }
}
