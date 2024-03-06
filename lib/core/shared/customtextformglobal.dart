import 'package:exfai/all_export.dart';

class CustomTextFormGlobal extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final TextEditingController? mycontroller;
  final String? Function(String?) valid;
  final bool isNumber;
  final bool? obscureText;
  final void Function()? onTapIcon;

  const CustomTextFormGlobal({
    super.key,
    this.obscureText,
    this.onTapIcon,
    required this.hinttext,
    required this.labeltext,
    required this.mycontroller,
    required this.valid,
    required this.isNumber,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: Text(
            labeltext,
            style: const TextStyle(fontSize: 18.0, color: Colors.black),
          ),
        ),
        Center(
          child: TextFormField(
            keyboardType: isNumber
                ? const TextInputType.numberWithOptions(decimal: true)
                : TextInputType.text,
            validator: valid,
            controller: mycontroller,
            obscureText: obscureText ?? false,
            decoration: InputDecoration(
              hintText: hinttext,
              hintStyle: const TextStyle(fontSize: 14),
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(40.0),
              ), // Remove border
              filled: true, // Fill background color
              fillColor: Colors.grey[200], // Set background color
            ),
          ),
        ),
      ],
    );
  }
}
