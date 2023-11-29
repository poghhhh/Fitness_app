import 'package:fitness_app/feature/presentation/controllers/excercise_details_page_controller.dart';
import 'package:get/get.dart';

class ExcerciseDetailsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExcerciseDetailsPageController());
  }
}
