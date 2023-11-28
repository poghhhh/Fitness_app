import 'package:fitness_app/feature/presentation/controllers/excercise_list_controller.dart';
import 'package:fitness_app/feature/providers/repositories/excercise_list_page_repository.dart';
import 'package:get/get.dart';

class ExcercisePageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExcerciseListController());
    Get.lazyPut(() => ExcerciseListPageRepositoryIml());
  }
}
