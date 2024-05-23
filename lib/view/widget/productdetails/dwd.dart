import '../../../all_export.dart';

class AnimatedCounter extends StatefulWidget {
  const AnimatedCounter({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _AnimatedCounterState createState() => _AnimatedCounterState();
}

class _AnimatedCounterState extends State<AnimatedCounter> {
  int count = 0;

  void onAdd() {
    setState(() {
      count++;
    });
  }

  void onRemove() {
    setState(() {
      if (count > 0) count--;
    });
  }

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
        if (count > 0) ...[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              padding: const EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                color: AppColors.primary.withOpacity(0.1),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                '$count',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
            ),
          ),
          AnimatedOpacity(
            opacity: count > 0 ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 300),
            child: IconButton(
              onPressed: onRemove,
              icon: const Icon(
                Icons.remove_circle,
                color: AppColors.primary,
              ),
            ),
          ),
        ],
      ],
    );
  }
}
