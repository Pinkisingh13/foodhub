
import 'package:get/get.dart';
import '../features/authentication/controllers/splash/splash.dart';

class GeneralBindings extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());


  }
}
