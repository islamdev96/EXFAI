import 'package:exfai/all_export.dart';

class AuthController extends GetxController {
  late SharedPreferences sharedPreferences;

  Future<AuthController> init() async {
    await Firebase.initializeApp();
    sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }

  SharedPreferences? _prefs;

  Future<void> storeTempData(String key, dynamic value) async {
    _prefs ??= await SharedPreferences.getInstance();
    await _prefs!.setString(key, value);
  }

  Future<void> transferTempDataToAccount() async {
    _prefs ??= await SharedPreferences.getInstance();
    final String? id = _prefs!.getString("id");
    final String? username = _prefs!.getString("username");
    final String? email = _prefs!.getString("email");
    final String? password = _prefs!.getString("password");
    final String? phone = _prefs!.getString("phone");
    final String? address = _prefs!.getString("address");
    final String? lang = _prefs!.getString("lang");
    final String? deliverytime = _prefs!.getString("deliverytime");
    final String? step = _prefs!.getString("step");
    final String? token = _prefs!.getString("token");
    final String? image = _prefs!.getString("image");
    final String? status = _prefs!.getString("status");
    final String? type = _prefs!.getString("type");
    final String? createdat = _prefs!.getString("createdat");
    final String? updatedat = _prefs!.getString("updatedat");
    final String? deletedat = _prefs!.getString("deletedat");
    final String? remember = _prefs!.getString("remember");
    final String? tokenfirebase = _prefs!.getString("tokenfirebase");
    final String? tokenfirebaseios = _prefs!.getString("tokenfirebaseios");
    final String? tokenfirebaseandroid =
        _prefs!.getString("tokenfirebaseandroid");
    final String? tokenfirebaseweb = _prefs!.getString("tokenfirebaseweb");
    final String? tokenfirebaseother = _prefs!.getString("tokenfirebaseother");
    final String? tokenfirebaseotherios =
        _prefs!.getString("tokenfirebaseotherios");
    final String? tokenfirebaseotherandroid =
        _prefs!.getString("tokenfirebaseotherandroid");
    final String? tokenfirebaseotherweb =
        _prefs!.getString("tokenfirebaseotherweb");
    final String? tokenfirebaseotherother =
        _prefs!.getString("tokenfirebaseotherother");
    final String? tokenfirebaseotherotherios =
        _prefs!.getString("tokenfirebaseotherotherios");
    final String? tokenfirebaseotherotherandroid =
        _prefs!.getString("tokenfirebase otherotherandroid");
    final String? tokenfirebaseotherotherweb =
        _prefs!.getString("tokenfirebaseotherotherweb");

    // قم بتحديث حساب المستخدم باستخدام id أو أي معلومات أخرى
    // myServices.sharedPreferences.setString("id", id);
    // myServices.sharedPreferences.setString("username", username);
    // myServices.sharedPreferences.setString("email", email);
    // myServices.sharedPreferences.setString("password", password);

    // myServices.sharedPreferences.setString("phone", phone);
  }
}
