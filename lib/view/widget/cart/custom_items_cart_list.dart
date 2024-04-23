// ignore_for_file: avoid_unnecessary_containers

import '../../../all_export.dart';

class CustomItemsCartList extends StatelessWidget {
  final String name;
  final String price;
  final String count;
  final String imageName;
  final VoidCallback? onAdd;
  final VoidCallback? onRemove;

  const CustomItemsCartList({
    super.key,
    required this.name,
    required this.price,
    required this.count,
    required this.imageName,
    required this.onAdd,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.secondaryBackground,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: CachedNetworkImage(
                imageUrl: "${AppLink.imagestItems}/$imageName",
                height: 80,
              ),
            ),
            Expanded(
              flex: 3,
              child: ListTile(
                title: Text(name, style: const TextStyle(fontSize: 15)),
                subtitle: Text(
                  price,
                  style: const TextStyle(
                    color: AppColors.secondaryText,
                    fontSize: 17,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    iconSize: 32,
                    color: AppColors.primary,
                    onPressed: onAdd,
                    icon: const Icon(Icons.add_box_rounded),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    count,
                    style: const TextStyle(
                      fontFamily: "sans",
                      color: AppColors.black,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                    child: IconButton(
                      onPressed: onRemove,
                      icon: const Icon(Icons.remove),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
