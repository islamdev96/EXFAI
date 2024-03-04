import '../../../../all_export.dart';

class AddBookSearchDelegate extends SearchDelegate {
  final List<AddBookModel> addBookModel;

  AddBookSearchDelegate(
      {super.searchFieldLabel,
      super.searchFieldStyle,
      super.searchFieldDecorationTheme,
      super.keyboardType,
      super.textInputAction,
      required this.addBookModel});
  @override
  List<Widget>? buildActions(BuildContext context) {
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
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, '');
      },
      icon: const Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    final List<AddBookModel> filteredList = query.isEmpty
        ? addBookModel
        : addBookModel
            .where((element) =>
                element.addbookTitle!
                    .toLowerCase()
                    .contains(query.toLowerCase()) ||
                element.addbookAuthor!
                    .toLowerCase()
                    .contains(query.toLowerCase()))
            .toList();

    return GetBuilder<HomeControllerImp>(
      builder: (controller) => ListView.separated(
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Get.find<HomeControllerImp>()
                  .goToPageProductDetails(filteredList[index]);
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            filteredList[index].addbookTitle!,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            filteredList[index].addbookAuthor!,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            filteredList[index].addbookPrice!,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider();
        },
        itemCount: filteredList.length,
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final List<AddBookModel> filteredList = query.isEmpty
        ? addBookModel
        : addBookModel
            .where((element) =>
                element.addbookTitle!
                    .toLowerCase()
                    .contains(query.toLowerCase()) ||
                element.addbookAuthor!
                    .toLowerCase()
                    .contains(query.toLowerCase()))
            .toList();

    return GetBuilder<HomeControllerImp>(
      builder: (controller) => ListView.separated(
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Get.find<HomeControllerImp>()
                  .goToPageProductDetails(filteredList[index]);
            },
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 20),
              child: Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      const SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            filteredList[index].addbookTitle!,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            filteredList[index].addbookAuthor!,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            filteredList[index].addbookPrice!,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const Divider();
        },
        itemCount: filteredList.length,
      ),
    );
  }
}
