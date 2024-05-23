// ignore_for_file: library_private_types_in_public_api

import '../../../../../all_export.dart';

class ItemsHome extends StatefulWidget {
  final ItemsModel itemsModel;
  const ItemsHome({super.key, required this.itemsModel});

  @override
  _ItemsHomeState createState() => _ItemsHomeState();
}

class _ItemsHomeState extends State<ItemsHome> {
  int itemCount = 0;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.toNamed("productdetails", arguments: {
          "itemsmodel": widget.itemsModel,
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Container(
          decoration: _buildBoxDecoration(),
          height: 150.h,
          width: 150.w,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                _buildImage(),
                const SizedBox(height: 8.0),
                PriceWithCurrency(
                  price: "${widget.itemsModel.itemsPrice}",
                  color: AppColors.black,
                ),
                const SizedBox(height: 4.0),
                _buildProductName(),
                const SizedBox(height: 8.0),
                _buildPriceAndCountItems(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Method to build box decoration
  BoxDecoration _buildBoxDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 2,
          blurRadius: 5,
          offset: const Offset(0, 3),
        ),
      ],
    );
  }

  // Method to build product image
  Widget _buildImage() {
    return Padding(
      padding: const EdgeInsets.only(top: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: CustomCachedNetworkImage(
          imageUrl: "${AppLink.imagestItems}/${widget.itemsModel.itemsImage}",
          width: 80.w,
          height: 80.h,
        ),
      ),
    );
  }

  // Method to build price and currency row

  // Method to build product name
  Widget _buildProductName() {
    return Row(
      children: [
        Expanded(
          child: Text(
            translateDatabase(
              widget.itemsModel.itemsNameAr,
              widget.itemsModel.itemsName,
            ),
            style: TextStyle(
              color: AppColors.secondaryText,
              fontSize: 14.sp,
            ),
          ),
        ),
      ],
    );
  }

  // Method to build price and count items
  Widget _buildPriceAndCountItems() {
    return PriceAndCountItems(
      onAdd: () {
        setState(() {
          itemCount++;
        });
      },
      onRemove: () {
        setState(() {
          if (itemCount > 0) itemCount--;
        });
      },
      price: widget.itemsModel.itemsPrice!,
      count: itemCount.toString(),
    );
  }
}

class PriceAndCountItems extends StatelessWidget {
  final void Function()? onAdd;
  final void Function()? onRemove;
  final String price;
  final String count;

  const PriceAndCountItems({
    super.key,
    required this.onAdd,
    required this.onRemove,
    required this.price,
    required this.count,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
            fontSize: 20,
            height: 1.1,
            color: AppColors.primary,
          ),
        ),
        IconButton(
          onPressed: onRemove,
          icon: const Icon(
            Icons.remove_circle,
            color: AppColors.primary,
          ),
        ),
      ],
    );
  }
}
