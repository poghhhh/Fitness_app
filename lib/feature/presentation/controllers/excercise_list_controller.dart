import 'package:fitness_app/feature/providers/repositories/excercise_list_page_repository.dart';
import 'package:flutter/animation.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:get/get.dart';

class ExcerciseListController extends GetxController
    with GetSingleTickerProviderStateMixin {
  ExcerciseListPageRepositoryIml excerciseListPageRepositoryIml = Get.find();
  final RxBool isIOS = true.obs;

  final animationsMap = {
    'containerOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 600.ms,
          begin: const Offset(0, 70),
          end: const Offset(0, 0),
        ),
      ],
    ),
  };

  @override
  void onInit() {
    super.onInit();
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );
    fetchData();
  }

  fetchData() async {
    final data = await excerciseListPageRepositoryIml.fetch();
    print(data);
  }
}
