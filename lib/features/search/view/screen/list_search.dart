import '../../../../all_export.dart';

class ListSearch extends GetView<HomeControllerImp> {
  final List<AddBookModel> listdatamodel;
  const ListSearch({super.key, required this.listdatamodel});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listdatamodel.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            controller.goToPageProductDetails(listdatamodel[index]);
          },
          child: Container(
            color: AppColor.red,
            margin: const EdgeInsets.symmetric(vertical: 20),
            child: Card(
              child: Container(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    // Expanded(
                    //   child: CachedNetworkImage(
                    //     imageUrl:
                    //         "${AppLink.imagesAddBook}/${listdatamodel[index].addbookImage!}",
                    //   ),
                    // ),
                    Expanded(
                      flex: 2,
                      child: ListTile(
                        title: Text(
                          listdatamodel[index].addbookTitle!,
                          style: const TextStyle(color: AppColor.black),
                        ),
                        // subtitle: Text(
                        //   listdatamodel[index].addbookDescription!,
                        //   style: TextStyle(color: AppColor.black),
                        // ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
