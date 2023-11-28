import 'package:fitness_app/feature/bindings/excercise_list_binding.dart';
import 'package:fitness_app/feature/bindings/splash_screen_binding.dart';
import 'package:fitness_app/feature/presentation/pages/excercise_list_page.dart';
import 'package:fitness_app/feature/presentation/pages/splash_page.dart';
import 'package:fitness_app/feature/routes/app_routes.dart';
import 'package:get/get.dart';

class AppBindings {
  static final routes = [
    GetPage(
      name: AppRoutes.splashPage,
      page: () => const SplashPageWidget(),
      binding: SplashPageBinding(),
    ),
    GetPage(
      name: AppRoutes.excerciseListPage,
      page: () => const ExcerciseListPage(),
      binding: ExcercisePageBinding(),
    ),
  ];
}
