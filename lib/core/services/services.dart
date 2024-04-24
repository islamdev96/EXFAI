import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyServices extends GetxService {
  late SharedPreferences sharedPreferences;
  late User? currentUser; // Variable to store the current user

  bool isLoggedIn = false;

  Future<MyServices> init() async {
    sharedPreferences = await SharedPreferences.getInstance();
    isLoggedIn = sharedPreferences.getBool('isLoggedIn') ?? false;

    // Check if user is logged in
    if (isLoggedIn) {
      // Retrieve the current user ID from SharedPreferences
      String? userId = sharedPreferences.getString('userId');
      // Check if user ID is available
      if (userId != null) {
        currentUser = User(
            uid: userId); // Initialize currentUser with the retrieved user ID
      }
    } else {
      currentUser = null; // Initialize currentUser to null if not logged in
    }

    return this;
  }

  // Function to handle user login
  void loginUser(User user) {
    currentUser = user;
    isLoggedIn = true;
    // Save the current user ID to SharedPreferences upon login
    sharedPreferences.setString('userId', user.uid);
    sharedPreferences.setBool('isLoggedIn', true);
  }

  // Function to handle user logout
  void logoutUser() {
    currentUser = null;
    isLoggedIn = false;
    // Clear the current user ID from SharedPreferences upon logout
    sharedPreferences.remove('userId');
    sharedPreferences.setBool('isLoggedIn', false);
  }

  // Function to get the current user's ID
  String? getCurrentUserId() {
    return currentUser?.uid;
  }
}

// Initialize MyServices using Get.putAsync()
Future<void> initialServices() async {
  await Get.putAsync(() => MyServices().init());
}

class User {
  final String uid;

  User({required this.uid});
}
