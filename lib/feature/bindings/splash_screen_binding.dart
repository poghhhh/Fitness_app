import 'package:fitness_app/feature/presentation/controllers/splash_screen_controller.dart';
import 'package:get/get.dart';

class SplashPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SplashPageController());
  }
}
