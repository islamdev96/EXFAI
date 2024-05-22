import 'package:exfai/features/search/view/screen/book_card.dart';

import '../../../../all_export.dart';

class ItemsSearchDelegate extends SearchDelegate<List<ItemsModel>> {
  final List<ItemsModel> itemsModel;

  ItemsSearchDelegate({required this.itemsModel});

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: const Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, []);
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return _buildSearchResults(context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return _buildSearchResults(context);
  }

  Widget _buildSearchResults(BuildContext context) {
    final filteredList = itemsModel.where((items) =>
        items.itemsName!.toLowerCase().contains(query.toLowerCase()) ||
        items.itemsDesc!.toLowerCase().contains(query.toLowerCase()));

    if (filteredList.isEmpty) {
      return const Center(
        child: Text('لم يتم العثور على نتائج'),
      );
    }

    return ListView.separated(
      itemBuilder: (context, index) {
        final items = filteredList.elementAt(index);
        return ItemsCard(items: items);
      },
      separatorBuilder: (context, index) {
        return Divider(
          height: 0.0001.h,
          thickness: 0.0001.h,
        );
      },
      itemCount: filteredList.length,
    );
  }
}
