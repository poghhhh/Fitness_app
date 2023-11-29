import 'package:fitness_app/feature/providers/network/responses/excercise_body_part_list_response.dart';
import 'package:fitness_app/feature/providers/repositories/excercise_details_page_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:get/get.dart';

class ExcerciseDetailsPageController extends GetxController {
  ExcerciseDetailsPageRepositoryIml excerciseDetailsPageRepositoryIml =
      Get.find();
  Rx<ExcerciseBodyPart> data = Rx(ExcerciseBodyPart());
  final animationsMap = {
    'imageOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(79, 0),
          end: const Offset(0, 0),
        ),
        ScaleEffect(
          curve: Curves.easeOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(1, 0),
          end: const Offset(1, 1),
        ),
      ],
    ),
  };
  @override
  void onInit() {
    super.onInit();
    fetch(Get.arguments["excerciseId"]);
  }

  Future<void> fetch(String id) async {
    data.value = await excerciseDetailsPageRepositoryIml.fetch(id);
  }
}
