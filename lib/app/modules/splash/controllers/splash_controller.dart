import 'package:get/get.dart';
import 'package:nubank_clone/app/routes/app_pages.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    Future.delayed(Duration(seconds: 5), () {
      Get.offAndToNamed(Routes.HOME);
    });
  }
}
