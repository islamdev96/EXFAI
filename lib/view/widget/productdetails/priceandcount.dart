import '../../../all_export.dart';

class PriceAndCountItems extends StatelessWidget {
  final void Function()? onAdd;
  final void Function()? onRemove;
  final String price;
  final String count;
  const PriceAndCountItems(
      {super.key,
      required this.onAdd,
      required this.onRemove,
      required this.price,
      required this.count});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            IconButton(
              onPressed: onAdd,
              icon: const Icon(
                Icons.add_box_rounded,
                color: AppColors.primary,
              ),
            ),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(bottom: 2),
                width: 50,
                // height: 30,
                decoration:
                    BoxDecoration(border: Border.all(color: Colors.black)),
                child: Text(
                  count,
                  style: const TextStyle(
                      fontSize: 20, height: 1.1, color: AppColors.primary),
                )),
            IconButton(
              onPressed: onRemove,
              icon: const Icon(
                Icons.remove_circle,
                color: AppColors.primary,
              ),
            ),
          ],
        ),
        const Spacer(),
        Text(
          "$price \$",
          style: const TextStyle(
              color: AppColors.primary, fontSize: 30, height: 1.1),
        )
      ],
    );
  }
}
