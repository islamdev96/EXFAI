// price_with_currency.dart

import '../../../../../all_export.dart'; // قم بتحديث المسار وفقاً لهيكلية مشروعك

class PriceWithCurrency extends StatelessWidget {
  final String price;
  final double priceFontSize;
  final double currencyFontSize;
  final Color color;

  const PriceWithCurrency({
    super.key,
    required this.price,
    this.priceFontSize = 26.0,
    this.currencyFontSize = 6.0,
    this.color = AppColors.black, // لون افتراضي
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          price,
          style: TextStyle(
            color: color,
            fontSize: priceFontSize,
            height: 1.1,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          "egp".tr,
          style: TextStyle(
            color: color,
            fontSize: currencyFontSize,
            height: 1.1,
          ),
        ),
      ],
    );
  }
}
