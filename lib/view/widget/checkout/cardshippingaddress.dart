import '../../../all_export.dart';

class CardShppingAddressCheckout extends StatelessWidget {
  final String title;
  final String body;
  final bool isactive;
  final VoidCallback? onCancel; // Define the onCancel callback

  const CardShppingAddressCheckout({
    Key? key,
    required this.title,
    required this.body,
    required this.isactive,
    this.onCancel, // Add onCancel as a named parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: isactive ? AppColor.primaryText : AppColor.primaryText,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            color: isactive ? AppColor.primaryText : null,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          body,
          style: TextStyle(
            color: isactive ? AppColor.primaryText : null,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing:
            onCancel != null // Add a cancel button/icon if onCancel is defined
                ? IconButton(
                    onPressed: onCancel,
                    icon: const Icon(Icons.cancel),
                    color: AppColor.primaryText,
                  )
                : null,
      ),
    );
  }
}

// ... Rest of your code ...
