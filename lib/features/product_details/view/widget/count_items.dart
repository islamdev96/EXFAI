import '../../../../all_export.dart';

class CountItems extends StatelessWidget {
  final void Function()? onAdd;
  final void Function()? onRemove;
  final String count;
  const CountItems(
      {super.key,
      required this.onAdd,
      required this.onRemove,
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
            Text(
              count,
              style: const TextStyle(
                  fontSize: 20, height: 1.1, color: AppColors.primary),
            ),
            IconButton(
              onPressed: onRemove,
              icon: const Icon(
                Icons.remove_circle,
                color: AppColors.primary,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class CountItems2 extends StatelessWidget {
  final void Function()? onAdd;
  const CountItems2({
    super.key,
    required this.onAdd,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: onAdd,
          icon: const Icon(
            Icons.add_box_rounded,
            color: AppColors.primary,
          ),
        ),
      ],
    );
  }
}
