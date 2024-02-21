// import '../../all_export.dart';

// abstract class ItemsController extends GetxController {
//   intialData();
//   changeCat(int val, String catval);
//   getItems(String categoryid);
//   goToPageProductDetails(addBookModel addBookModel);
// }

// class AddBookControllerImp extends SearchMixController {
//   List categories = [];
//   String? catid;
//   int? selectedCat;

//   AddbookData testData = AddbookData(Get.find());

//   String deliverytime = "";
//   List data = [];

//   @override
//   // ignore: overridden_fields
//   late StatusRequest statusRequest;

//   MyServices myServices = Get.find();

//   @override
//   void onInit() {
//     search = TextEditingController();
//     intialData();
//     super.onInit();
//   }

//   intialData() {
//     deliverytime = myServices.sharedPreferences.getString("deliverytime")!;
//     categories = Get.arguments['categories'];
//     selectedCat = Get.arguments['selectedcat'];
//     catid = Get.arguments['catid'];
//     getItems(catid!);
//   }

//   changeCat(val, catval) {
//     selectedCat = val;
//     catid = catval;
//     getItems(catid!);
//     update();
//   }

//   getItems(categoryid) async {
//     data.clear();
//     statusRequest = StatusRequest.loading;
//     var response = await testData.getData(
//         categoryid, myServices.sharedPreferences.getString("id")!);
//     statusRequest = handlingData(response);
//     if (StatusRequest.success == statusRequest) {
//       // Start backend
//       if (response['status'] == "success") {
//         data.addAll(response['data']);
//       } else {
//         statusRequest = StatusRequest.failure;
//       }
//       // End
//     }
//     update();
//   }

//   goToPageProductDetails(addBookModel) {
//     Get.toNamed("productdetails", arguments: {"addBookModel": addBookModel});
//   }
// }


























// // class FavoriteController extends GetxController {
// //   Map isFavorite = {};

// //   setFavorite(id, val) {
// //     isFavorite[id] = val;
// //     print(isFavorite[id]);
// //     update();
// //   }
// // }
