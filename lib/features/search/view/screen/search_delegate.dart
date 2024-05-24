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
    final filteredList = itemsModel.where((items) {
      final name = translateDatabase(items.itemsNameAr, items.itemsName);
      final desc = translateDatabase(items.itemsDescAr, items.itemsDesc);

      return name.toLowerCase().contains(query.toLowerCase()) ||
          desc.toLowerCase().contains(query.toLowerCase());
    }).toList();

    if (filteredList.isEmpty) {
      return Center(
        child: Text("noResultsFound".tr),
      );
    }

    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 8.0),
      itemBuilder: (context, index) {
        final items = filteredList[index];
        return ItemsCard(items: items);
      },
      separatorBuilder: (context, index) {
        return Divider(
          height: 1,
          thickness: 1,
          color: Colors.grey[200],
        );
      },
      itemCount: filteredList.length,
    );
  }
}
