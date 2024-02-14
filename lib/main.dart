import 'all_export.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await initialServices();

  runApp(const MyApp());
}

class MyApp extends GetWidget<LocaleController> {
  const MyApp({super.key});
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
          theme: ThemeData(
            listTileTheme: const ListTileThemeData(
              textColor: Colors.white,
            ),
            useMaterial3: true,
          ),

          translations: MyTranslation(),
          debugShowCheckedModeBanner: false,
          locale: controller.language,
          // theme: controller.appTheme,
          initialBinding: InitialBindings(),
          getPages: routes,
          title: 'Exfai',
        );
      },
    );
  }
}
