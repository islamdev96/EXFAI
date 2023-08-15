import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class SettingsPage1 extends StatefulWidget {
  static const routeName = '/SettingsPage1';

  const SettingsPage1({super.key});

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage1> {
  Locale _currentLocale = const Locale('en'); // Initial locale is English

  void _changeLanguage(String langCode) {
    setState(() {
      _currentLocale = Locale(langCode);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Localizations(
      locale: _currentLocale,
      delegates: [
        AppLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      child: Scaffold(
        backgroundColor: Colors.grey.shade200,
        appBar: AppBar(),
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Card(
                    elevation: 8.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.amber,
                    child: ListTile(
                      onTap: () {
                        //open edit profile
                      },
                      title: const Text(
                        "John Doe",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      leading: const CircleAvatar(
                        backgroundImage: AssetImage('assets/images/1.png'),
                      ),
                      trailing: const Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Card(
                    elevation: 4.0,
                    margin: const EdgeInsets.fromLTRB(32.0, 8.0, 32.0, 16.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      children: <Widget>[
                        ListTile(
                          leading: const Icon(
                            Icons.lock_outline,
                            color: Colors.amber,
                          ),
                          title: const Text("Change Password"),
                          trailing: const Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            //open change password
                          },
                        ),
                        _buildDivider(),
                        ListTile(
                          leading: Icon(
                            MaterialCommunityIcons.earth,
                            color: Colors.amber,
                          ),
                          title: Text(AppLocalizations.of(context)
                              .translate('changeLanguage')),
                          trailing: const Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            // Implement the language change logic
                            // For example, you could call _changeLanguage('ar') for Arabic
                            // or _changeLanguage('en') for English
                          },
                        ),
                        _buildDivider(),
                        ListTile(
                          leading: const Icon(
                            Icons.location_on,
                            color: Colors.amber,
                          ),
                          title: const Text("Change Location"),
                          trailing: const Icon(Icons.keyboard_arrow_right),
                          onTap: () {
                            //open change location
                          },
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  const Text(
                    "Notification Settings",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),
                  ),
                  SwitchListTile(
                    activeColor: Colors.amber,
                    contentPadding: const EdgeInsets.all(0),
                    value: true,
                    title: const Text("Received notification"),
                    onChanged: (val) {},
                  ),
                  const SwitchListTile(
                    activeColor: Colors.amber,
                    contentPadding: EdgeInsets.all(0),
                    value: false,
                    title: Text("Received newsletter"),
                    onChanged: null,
                  ),
                  SwitchListTile(
                    activeColor: Colors.amber,
                    contentPadding: const EdgeInsets.all(0),
                    value: true,
                    title: const Text("Received Offer Notification"),
                    onChanged: (val) {},
                  ),
                  const SwitchListTile(
                    activeColor: Colors.amber,
                    contentPadding: EdgeInsets.all(0),
                    value: true,
                    title: Text("Received App Updates"),
                    onChanged: null,
                  ),
                  const SizedBox(height: 60.0),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container _buildDivider() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 8.0,
      ),
      width: double.infinity,
      height: 1.0,
      color: Colors.grey.shade400,
    );
  }
}

class MaterialCommunityIcons {
  static IconData? earth;
}

class AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  @override
  bool isSupported(Locale locale) {
    return ['en', 'ar'].contains(locale.languageCode);
  }

  @override
  Future<AppLocalizations> load(Locale locale) async {
    AppLocalizations localizations = AppLocalizations(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<AppLocalizations> old) {
    return false;
  }
}

class AppLocalizations {
  final Locale locale;

  AppLocalizations(this.locale);

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  final Map<String, String> _localizedStrings = {};

  Future<void> load() async {
    // Load your translations here based on the locale
    // For example, use a map to load translations
    // _localizedStrings = await loadTranslationMapForLocale(locale);
  }

  String translate(String key) {
    return _localizedStrings[key] ?? key;
  }
}

void main() {
  runApp(const MaterialApp(
    home: SettingsPage1(),
  ));
}
