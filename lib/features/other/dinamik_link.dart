// import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
// import 'package:share_plus/share_plus.dart';

// class DynamicLinkProvider {
//   //create the link
//   Future<String> createLink(String refCode) async {
//     final String url = "https://app.tell?ref=$refCode";

//     final DynamicLinkParameters parameters = DynamicLinkParameters(
//       // -- android parameters
//       androidParameters: const AndroidParameters(
//         packageName: "app.tell",
//         minimumVersion: 0,
//       ),
//       // -- ios parameters
//       iosParameters: const IOSParameters(
//         bundleId: "app.tell",
//         minimumVersion: "0",
//       ),
//       // -- other parameters
//       link: Uri.parse(url),
//       uriPrefix: "https://readaloud.page", // Your dynamic link domain
//     );

//     final FirebaseDynamicLinks link = FirebaseDynamicLinks.instance;
//     // the "await" keyword is used to wait for the asynchronous operation to complete

//     final refLink = await link.buildShortLink(parameters);

//     return refLink.shortUrl.toString();
//   }

//   //Init dynamic link
// //Init dynamic link
//   void initDynamicLink() async {
//     final PendingDynamicLinkData? instanceLink =
//         await FirebaseDynamicLinks.instance.getInitialLink();

//     if (instanceLink != null) {
//       // ignore: unused_local_variable
//       final Uri refLink = instanceLink.link;

//       Share.share("this is the \$  {refLink.data}");
//     }
//   }
// }
