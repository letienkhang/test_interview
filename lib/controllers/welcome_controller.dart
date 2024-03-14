import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class WelcomeController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    checkLoggedInStatus();
  }

  @override
  void onReady() {
    super.onReady();
    checkLoggedInStatus();
  }

  Future<void> checkLoggedInStatus() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? username = prefs.getString('username');
    if (username != null) {
      Get.offAllNamed('/home');
    } else {
      Get.offAllNamed('/login');
    }
  }
}

class WelcomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WelcomeController());
  }
}
