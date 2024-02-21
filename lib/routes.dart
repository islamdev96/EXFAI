import 'package:exfai/addbook/view/screen/addbook/add.dart';
import 'package:exfai/addbook/view/screen/addbook/edit.dart';
import 'package:exfai/addbook/view/screen/addbook/view.dart';

import 'all_export.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/", page: () => const Languages(), middlewares: [MyMiddleWare()]),
  // name: "/", page: () => const OnBoarding(), middlewares: [MyMiddleWare()]),
  GetPage(name: AppRoute.languages, page: () => const Languages()),
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),

  // GetPage(name: "/", page: () =>   TestView()),
  GetPage(name: AppRoute.cart, page: () => const Cart()),

  //categories

  // GetPage(name: AppRoute.categories, page: () => const Categories()),
  // GetPage(name: AppRoute.categoriesAdd, page: () => const CategoriesAdd()),
  // GetPage(name: AppRoute.categoriesView, page: () => const CategoriesView()),
  // GetPage(name: AppRoute.categoriesDetails, page: () => const CategoriesDetails()),

  //AddBook
  GetPage(name: AppRoute.addbookView, page: () => const AddBookView()),
  GetPage(name: AppRoute.addbookAdd, page: () => const AddBookAdd()),
  // GetPage(name: AppRoute.addbookEdit, page: () => const AddBookEdit()),
  // GetPage(name: AppRoute.addbookDetails, page: () => const AddBookDetails()),
  // GetPage(name: AppRoute.addbookDelete, page: () => const AddBookDelete()),

//  Auth
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verfiyCode, page: () => const VerfiyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(
      name: AppRoute.successResetpassword,
      page: () => const SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
  GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),
  GetPage(
      name: AppRoute.verfiyCodeSignUp, page: () => const VerfiyCodeSignUp()),
  //
  GetPage(name: AppRoute.homepage, page: () => const HomeScreen()),
  GetPage(name: AppRoute.addbook, page: () => const AddBook()),
  GetPage(name: AppRoute.productdetails, page: () => const ProductDetails()),
  GetPage(name: AppRoute.myFavroite, page: () => const MyFavorite()),
  //
  // GetPage(name: AppRoute.addressview, page: () => const AddressView()),
  // GetPage(name: AppRoute.addressadd, page: () => const AddressAdd()),
  GetPage(name: AppRoute.checkout, page: () => const Checkout()),
  GetPage(name: AppRoute.orderspending, page: () => const OrdersPending()),
  // GetPage(name: AppRoute.ordersarchive, page: () => const OrdersArchiveView()),
  // GetPage(name: AppRoute.ordersdetails, page: () => const OrdersDetails()),
  // GetPage(
  //     name: AppRoute.addressadddetails, page: () => const AddressAddDetails()),
  // GetPage(name: AppRoute.ordersTracking, page: () => const OrdersTracking()),
];
