import 'package:fitness_app/feature/models/splash_screen_model.dart';
import 'package:flutter/animation.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutterflow_ui/flutterflow_ui.dart';
import 'package:get/get.dart';

class SplashPageController extends GetxController {
  late final SplashPageModel _model;

  SplashPageModel get model => _model;

  final animationsMap = {
    'buttonOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        FadeEffect(
          curve: Curves.easeInOut,
          delay: 250.ms,
          duration: 600.ms,
          begin: 0,
          end: 1,
        ),
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 250.ms,
          duration: 600.ms,
          begin: const Offset(0, 64),
          end: const Offset(0, 0),
        ),
        ScaleEffect(
          curve: Curves.easeInOut,
          delay: 250.ms,
          duration: 600.ms,
          begin: const Offset(1, 0),
          end: const Offset(1, 1),
        ),
      ],
    ),
  };

  @override
  void onInit() {
    // Use Get.put to initialize your controller
    _model = Get.put(SplashPageModel());
    super.onInit();
  }

  @override
  void onClose() {
    _model.dispose();
    super.onClose();
  }
}
