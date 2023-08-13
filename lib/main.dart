import 'all_export.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await initialServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    LocaleController controller = Get.put(LocaleController());

    return ScreenUtilInit(
      useInheritedMediaQuery: true,
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          translations: MyTranslation(),
          debugShowCheckedModeBanner: false,
          // Set the locale to Arabic
          locale: const Locale('ar', ''), // 'ar' for Arabic
          fallbackLocale: const Locale('ar', ''),

          title: 'Exfai',
          theme: controller.appTheme,
          initialBinding: InitialBindings(),
          getPages: routes,
        );
      },
    );
  }
}
