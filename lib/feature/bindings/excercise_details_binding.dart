import 'package:fitness_app/feature/presentation/controllers/excercise_details_page_controller.dart';
import 'package:fitness_app/feature/providers/repositories/excercise_details_page_repository.dart';
import 'package:get/get.dart';

class ExcerciseDetailsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExcerciseDetailsPageRepositoryIml());
    Get.lazyPut(() => ExcerciseDetailsPageController());
  }
}
