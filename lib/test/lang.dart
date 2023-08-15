// // ignore_for_file: unused_element

// import 'package:flutter/material.dart';
// import 'package:flutter_localizations/flutter_localizations.dart';
// import 'package:flutter/services.dart' show rootBundle;
// import 'dart:convert';

// class Localizations extends StatefulWidget {
//   const Localizations({super.key});

//   @override
//   _LocalizationsState createState() => _LocalizationsState();
// }

// class _LocalizationsState extends State<Localizations> {
//   Locale _locale = const Locale('en', 'US'); // Default locale is English

//   Future<void> _loadLocale() async {
//     final localeJson =
//         await rootBundle.loadString('assets/${_locale.languageCode}.json');
//     return json.decode(localeJson);
//   }

//   void _switchLanguage() {
//     setState(() {
//       _locale = _locale.languageCode == 'en'
//           ? const Locale('ar', 'SA')
//           : const Locale('en', 'US');
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       localizationsDelegates: const [
//         GlobalMaterialLocalizations.delegate,
//         GlobalWidgetsLocalizations.delegate,
//       ],
//       supportedLocales: const [Locale('en', 'US'), Locale('ar', 'SA')],
//       locale: _locale,
//       darkTheme: ThemeData.dark(),
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text(AppLocalizations.of(context).translate('title')),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(AppLocalizations.of(context).translate('switchButton')),
//               ElevatedButton(
//                 onPressed: _switchLanguage,
//                 child: Text(
//                     AppLocalizations.of(context).translate('switchButton')),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class AppLocalizations {
//   final Map<String, String> localizedStrings;

//   AppLocalizations(this.localizedStrings);

//   static AppLocalizations of(BuildContext context) {
//     return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
//   }

//   String translate(String key) {
//     return localizedStrings[key] ?? key;
//   }
// }
