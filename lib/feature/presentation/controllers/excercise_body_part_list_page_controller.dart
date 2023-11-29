import 'package:fitness_app/feature/providers/network/responses/excercise_body_part_list_response.dart';
import 'package:fitness_app/feature/providers/repositories/excercise_body_part_list_page_repository.dart';
import 'package:get/get.dart';

class ExcerciseBodyPartListPageController extends GetxController {
  ExcerciseBodyPartListPageRepositoryIml
      excerciseBodyPartListPageRepositoryIml = Get.find();
  RxList<ExcerciseBodyPart> dataList = RxList([]);

  @override
  void onInit() {
   
    super.onInit();
    fetch();
  }

  Future<void> fetch() async {
    dataList.value = await excerciseBodyPartListPageRepositoryIml.fetch(
        Get.arguments["query"], 1, 10);
  }
}
