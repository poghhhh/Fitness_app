import 'package:fitness_app/feature/presentation/controllers/excercise_body_part_list_page_controller.dart';
import 'package:fitness_app/feature/providers/repositories/excercise_body_part_list_page_repository.dart';
import 'package:get/get.dart';

class ExcerciseBodyPartListPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ExcerciseBodyPartListPageController());
    Get.lazyPut(() => ExcerciseBodyPartListPageRepositoryIml());
  }
}
